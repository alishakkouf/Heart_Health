using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try {
                if (Textarea1.Value == "" ||
                    Textarea2.Value == "" ||
                    image.Src == ""
                    )
                {
                    return;
                }
                string title = Textarea1.Value;
                string content = Textarea2.Value;
                string src = "";
                if (!fileupload1.HasFile)
                {
                    src = image.Src;
                }
                else {
                    src = "/img/" + fileupload1.PostedFile.FileName;
                }

                int id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
                string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                string qyery = "update article set title = '" + title + "',description = '" + content +
                    "',photo ='" + src + "' where idArticle = " + id;
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(qyery, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                DropDownList1.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = "please try again !!";
            }
            }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
            string qyery = "select * from article where idArticle = " + id;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(qyery, conn);
            conn.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                foreach (var item in dr)
                {
                    Textarea1.Value = dr.GetValue(1).ToString();
                    Textarea2.Value = dr.GetValue(3).ToString();
                    image.Src = dr.GetValue(2).ToString();
                    image.DataBind();

                }

            }

            dr.Close();
        }
    }
}