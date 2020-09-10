using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class adminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ShowButton(object sender, EventArgs e)
        {

            //string folderPath = Server.MapPath("~/img");

            ////Check whether Directory (Folder) exists.
            //if (!Directory.Exists(folderPath))
            //{
            //    //If Directory (Folder) does not exists. Create it.
            //    Directory.CreateDirectory(folderPath);
            //}

            ////Save the File to the Directory (Folder).
            //FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //string url = "~/img/" + Path.GetFileName(FileUpload1.FileName);

            //image1.Src = url;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Textarea1.Value == "" ||
                    Textarea2.Value == "")
                {
                    Label1.Text = "please fill the fields with New Title Information !!";
                }
                else

                {
                    if (!FileUpload1.HasFile)
                    {
                        Label1.Text = "please upload photo for new article!!";
                        return;
                    }
                    else
                    {


                        string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

                        // string filenameNoExtension = Path.GetFileNameWithoutExtension(FileUpload1.FileName);

                        string folderPath = Server.MapPath("/img/");

                        //Check whether Directory (Folder) exists.
                        if (!Directory.Exists(folderPath))
                        {
                            //If Directory (Folder) does not exists. Create it.
                            Directory.CreateDirectory(folderPath);
                        }

                        //Save the File to the Directory (Folder).
                        FileUpload1.PostedFile.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));


                        string url = @"\img\" + filename;

                        //image1.Src = url;


                        int visits = 0;

                        string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                        string query = "insert into article(title,photo,description,visitors) " +
                            "VALUES('" + Textarea1.Value + "','" + url + "','" + Textarea2.Value + "','" + visits + "')";
                        SqlConnection conn = new SqlConnection(connectionString);
                        SqlCommand cmd = new SqlCommand(query, conn);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        Label2.Text = "Done Successfully !!";
                    }
                }
            }
            catch (Exception ex)
            {
                Label2.Text = "please try again";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //if (!FileUpload1.HasFile)
            //{
            //    Label2.Text = "";
            //    Label1.Text = "please upload photo for new article!!";
            //    return;
            //}
            //else
            //{


            //    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);

            // string url = filename;

            //    image1.Src = url;
            }
        }
    }
