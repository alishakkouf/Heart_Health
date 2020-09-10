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
    public partial class index1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
           

                string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                string qyery = "select DISTINCT TOP 6 * from article ORDER BY visitors desc";
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(qyery, conn);
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);

                //first article
                string title = dt.Rows[0]["title"].ToString();
                string photo = dt.Rows[0]["photo"].ToString();
                string description = dt.Rows[0]["description"].ToString();
                int visits = Convert.ToInt32(dt.Rows[0]["visitors"].ToString());

                Label6.Text = title;
                Label1.Text = visits + "";
                image1.Src = photo;

                //second article
                string title8 = dt.Rows[1]["title"].ToString();
                string photo12 = dt.Rows[1]["photo"].ToString();
                string description12 = dt.Rows[1]["description"].ToString();
                int visits12 = Convert.ToInt32(dt.Rows[1]["visitors"].ToString());

                Label8.Text = title8;
                Label2.Text = visits12 + "";
                image2.Src = photo12;
                //third article
                string title3 = dt.Rows[2]["title"].ToString();
                string photo3 = dt.Rows[2]["photo"].ToString();
                string description3 = dt.Rows[2]["description"].ToString();
                int visits3 = Convert.ToInt32(dt.Rows[2]["visitors"].ToString());

                Label9.Text = title3;
                Label7.Text = visits3 + "";
                image3.Src = photo3;

                //4th article
                string title4 = dt.Rows[3]["title"].ToString();
                string photo4 = dt.Rows[3]["photo"].ToString();
                string description4 = dt.Rows[3]["description"].ToString();
                int visits4 = Convert.ToInt32(dt.Rows[3]["visitors"].ToString());

                Label10.Text = title4;
                Label4.Text = visits4 + "";
                image4.Src = photo4;

                //5th article
                string title5 = dt.Rows[4]["title"].ToString();
                string photo5 = dt.Rows[4]["photo"].ToString();
                string description5 = dt.Rows[4]["description"].ToString();
                int visits5 = Convert.ToInt32(dt.Rows[4]["visitors"].ToString());

                Label11.Text = title5;
                Label3.Text = visits5 + "";
                image5.Src = photo5;

                //6th article
                string title6 = dt.Rows[5]["title"].ToString();
                string photo6 = dt.Rows[5]["photo"].ToString();
                string description6 = dt.Rows[5]["description"].ToString();
                int visits6 = Convert.ToInt32(dt.Rows[5]["visitors"].ToString());

                Label12.Text = title6;
                Label5.Text = visits6 + "";
                image6.Src = photo6;






            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // string ida = dt.Rows[0]["idArticle"].ToString();
            //Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[0]["idArticle"].ToString();
            Session["isvisited"] = null;
            Response.Redirect("~/single-blog.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           // Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[1]["idArticle"].ToString();
            Response.Redirect("~/single-blog.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           // Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[2]["idArticle"].ToString();
            Response.Redirect("~/single-blog.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           // Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[3]["idArticle"].ToString();
            Response.Redirect("~/single-blog.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
          //  Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[4]["idArticle"].ToString();
            Response.Redirect("~/single-blog.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
          //  Response.Cookies["idArticle"].Value = null;


            Session["id"] = dt.Rows[5]["idArticle"].ToString();
            Response.Redirect("~/single-blog.aspx");
        }
    }
            }
    
