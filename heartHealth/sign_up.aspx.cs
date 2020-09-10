using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace heartHealth
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                if (Request["Fname"] == "" ||
                    Request["Lname"] == "" ||
                    Request["email"] == "" ||
                    Request["password"] == "" ||
                    Request["phone"] == "" ||
                    Request["mobile"] == "" ||
                    Request["age"] == "" ||
                    Request["captcha_code"] == "" ||
                    Request["sex"] == "")
                {
                    Label1.Text = "please fill the fields with your information !!";
                }
                else
                  if (captcha_code.Value.ToLower() == Session["CaptchaVerify"].ToString())

                {
                    string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                    string query = "insert into patient(Fname,Lname,E_malil,password,phone,mobile,data_of_birth,sex,captcha_code) " +
                        "VALUES('" + Request["Fname"] + "','" + Request["Lname"] + "','" + Request["email"] + "','" + Request["password"]
                        + "','" + Request["phone"] + "','" + Request["mobile"] + "','" + Request["age"] + "','" + Request["sex"] + "','" + Request["captcha_code"] + "')";
                    SqlConnection conn = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = " successfully !!";
                    Response.Redirect("~/login.aspx");
                }
                else {
                    Label1.Text = "Please enter correct captcha !";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "please try again !!";
            }

            }
    }
}