using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class single_blog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            HttpContext context = HttpContext.Current;
            int id = Convert.ToInt32(context.Session["id"]);

            
         string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
            string qyery = "select * from article where idArticle = "+id;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(qyery, conn);
            conn.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                foreach (var item in dr)
                {
                    title.Text = dr.GetValue(1).ToString();
                    image.Src = dr.GetValue(2).ToString();

                    content.Text = dr.GetValue(3).ToString();

                    //Request.Cookies["title"].Value = dr.GetValue(1).ToString();
                }
               
            }
            
            dr.Close();

            //if (Request.Cookies["idArticle"].Value == null)
            //{
                int visits = 0;
                SqlCommand cmd1 = new SqlCommand(qyery, conn);
                SqlDataReader dr1;
                dr1 = cmd1.ExecuteReader();
                if (dr1.HasRows)
                {
                    foreach (var item in dr1)
                    {
                        visits = ((Convert.ToInt32(dr1.GetValue(4).ToString())) + 1);
                    }

                    //string ida = dr1.GetValue(0).ToString();
                    //Response.Cookies["article"].Value = ida;
                    //Response.Cookies["ida"].Expires = DateTime.Now.AddMonths(1);

                }
                string q_update = "update article set visitors = " + visits + "where idArticle =" + id;
                //string v = dr1.GetValue(4).ToString();
                SqlCommand cmd2 = new SqlCommand(q_update, conn);


                //Response.Cookies["ida"].Expires = DateTime.Now.AddMonths(12);
                dr1.Close();
                cmd2.ExecuteNonQuery();
               
                conn.Close();



            //}
            //else { }
        }
    }
}