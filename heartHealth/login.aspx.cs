using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                string email = Request["email"];
                string password = Request["password"];
                if (Request["email"] != "" && Request["password"] != "")
                {
                    if (email == "admin".Trim() && password == "123".Trim())
                    {
                        Response.Redirect("~/management.aspx");
                        return;
                    }
                    string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                    string qyery = "select * from patient ";
                    SqlConnection conn = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(qyery, conn);
                    conn.Open();
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        foreach (var item in dr)
                        {
                            if (dr.GetValue(3).ToString() == email &&
                                dr.GetValue(4).ToString() == password)
                            {
                                Label1.Text = "successfule";
                                Session["id"] = dr.GetValue(0);
                                Response.Redirect("~/services.aspx");
                            }
                            else
                            {

                            }
                        }
                    }
                    else
                    {

                        Label1.Text = "error";
                    }

                    dr.Close();
                    conn.Close();
                }
                else
                {
                    Label1.Text = "Please enter your E_mail and Password !! or Sign up below";
                }


            }
            catch (Exception ex)
            {
                Label1.Text = "please try again !!";
            }
            }
    }
}