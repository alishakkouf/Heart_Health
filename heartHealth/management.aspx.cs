using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class management1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //mail.To.Add(replay);
                string to = GridView1.SelectedRow.Cells[7].Text; 
                string from = "krhan7ali@gmail.com";
                MailMessage mail = new MailMessage(from, to);

                string message = Textarea1.Value;
                mail.Subject = consulation.Value;
                mail.Body = message;

                mail.BodyEncoding = Encoding.UTF8;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("krhan7ali@gmail.com", "0935479586");
                smtp.Port = 25;
                smtp.EnableSsl = true;
                smtp.Send(mail);
            //ClientScript.RegisterStartupScript(GetType(),"alert","alert('Replay is sent');",true);
        }
            catch (Exception ex) {

                return;
            }
    string q = GridView1.SelectedRow.Cells[1].Text;

            string qyery = "update questions set flag = " + 1 + " where idQuestion= " + q;

            string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";

        
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(qyery, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            //GridView1.DataSourceID = SqlDataSource1;
            GridView1.DataBind();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

      

       

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/update.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/deleteArticle.aspx");
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            Response.Redirect("~/addArticle.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row.";

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowIndex == GridView1.SelectedIndex)
                {
                    row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                    row.ToolTip = string.Empty;
                    consulation.Value = GridView1.SelectedRow.Cells[5].Text;
                    medicalhistory.Value = GridView1.SelectedRow.Cells[6].Text;
                }
                else
                {
                    row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                    row.ToolTip = "Click to select this row.";
                }
            }
        }
    }
}