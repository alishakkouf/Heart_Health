using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class editArticle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try {
                string title = (DropDownList1.SelectedItem.ToString());
                int id = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
                string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                string qyery = " delete from article where idArticle = " + id;
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(qyery, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                DropDownList1.DataBind();
                Label1.Text = "Article " + title + " is deleted !!";
            }
            catch (Exception ex)
            {
                Label1.Text = "please try again !!";
            }
            }
        protected void show(object sender, EventArgs e)
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
                    Textarea2.Value = dr.GetValue(3).ToString();
                    image.Src = dr.GetValue(2).ToString();

                }

            }

            dr.Close();
        }

       
    }
}