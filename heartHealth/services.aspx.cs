using medsite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using test_adm;
using System.Drawing;


namespace heartHealth
{
    public partial class services1 : System.Web.UI.Page
    {
      
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try {

                if (Request["Medical_History"] == "" ||
                    Request["messege"] == ""
                    )
                {
                    Label1.Text = "please fill the medical History and write your question !!";
                    return;
                }


                //to use session
                HttpContext context = HttpContext.Current;

                string medical_historey = Request["Medical_History"] + "";
                string question = Request["messege"] + "";
                if (medical_historey != "" || question != "")
                {
                    DateTime date = DateTime.Now;
                    int flag = 0;
                    int id = Convert.ToInt32(context.Session["id"]);

                    string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                    string query = "insert into questions(date,Qtext,medicalHistory,id_patient,flag) VALUES('" + date + "','" + question + "','" + medical_historey + "','" + id + "','" + flag + "')";
                    SqlConnection conn = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = "Concultation is sent successfully !!";

                }
                else {

                }

            }
            catch (Exception ex)
            {
                Label1.Text = "please try again !!";
            }
            }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try {
                operat o1 = new operat();


                //string fn = "D:/svu/sessions/ADM/medicalsite/medicalsite/medsite/file1.csv";
                // int nx = 7;  // Number predictor variables
                //  int nc = 2;  // Number classes
                //    int N = 210;  // Number data items

                var datatable = new DataTable();

                string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                string query = "select * from test$";

                SqlConnection sql_conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(query, sql_conn);
                sql_conn.Open();

                SqlDataAdapter data_adapter = new SqlDataAdapter(cmd);
                data_adapter.Fill(datatable);

                string[][] data = o1.LoadData(datatable, ',');
                //    Console.WriteLine("Training data:");


                string age = Request["age"].Trim();
                int a = int.Parse(age);
                string chest_pain_type = Request["chest_pain_type"];

                string rest_blood_pressure = Request["rest_blood_pressure"].Trim();

                string blood_sugare = Request["blood_sugar"];

                string rest_electro = Request["rest_electro"];

                string max_heart_rate = Request["max_heart_rate"].Trim();

                string exercice_angina = Request["exercice_angina"];

                if (age == "" || chest_pain_type == "" || rest_blood_pressure == "" || blood_sugare == "" || rest_electro == "" || max_heart_rate == "" || exercice_angina == null)
                {
                    Label2.Text = "please enter your full information !!";
                    return;
                }

                int nx = 7;
                int nc = 2;
                int N = 209;

                int[][] jointCts = o1.MatrixInt(nx, nc);
                int[] yCts = new int[nc];
                string[] X = new string[] { age, chest_pain_type, rest_blood_pressure, blood_sugare, rest_electro, max_heart_rate, exercice_angina };
                // Console.WriteLine("Item to classify: ");

                int y;
                for (int i = 0; i < N; i++)
                {
                    string temp = (data[i][nx].ToString());
                    y = int.Parse(temp);
                    ++yCts[y];
                    for (int j = 0; j < nx; j++)
                    {
                        if (data[i][j] == X[j])
                            ++jointCts[j][y];
                    }
                }



                // Laplacian smoothing
                for (int i = 0; i < nx; ++i)
                    for (int j = 0; j < nc; ++j)
                        ++jointCts[i][j];


                Response.Write("\nClass counts: ");
                for (int k = 0; k < nc; ++k)
                    // Console.Write(yCts[k] + " ");
                    Response.Write(yCts[k] + " ");
                //   Console.WriteLine("\n");

                Response.Write("\n");
                // Compute evidence terms
                double[] eTerms = new double[nc];
                for (int k = 0; k < nc; ++k)
                {
                    double v = 1.0;
                    for (int j = 0; j < nx; ++j)
                    {
                        v *= (double)(jointCts[j][k]) / (yCts[k] + nx);
                    }
                    v *= (double)(yCts[k]) / N;
                    eTerms[k] = v;
                }

                Response.Write("Evidence terms:");
                for (int k = 0; k < nc; ++k)

                    Response.Write(eTerms[k].ToString("F16") + " ");

                double evidence = 0.0;
                for (int k = 0; k < nc; ++k)
                    evidence += eTerms[k];
                double[] probs = new double[nc];
                for (int k = 0; k < nc; ++k)
                    probs[k] = eTerms[k] / evidence;

                Label2.Text = "Probabilities: ";

                for (int k = 0; k < nc; ++k)
                Label3.Text = probs[0].ToString("F4") +" --> " +"Class 0 ";
                Label4.Text = probs[1].ToString("F4") +" --> " +"Class 1 ";

                int pc = o1.ArgMax(probs);
                Label5.Text = "Predicted class: ";
                Label6.Text = pc.ToString();

                if (pc == 0)
                {
                    Label7.Text = "the result is Negative";
                    

                }
                else
                {
                    Label7.Text = " the result is Positive";


                }
            }
            catch (Exception ex) {
                Label2.Text = "please try again !!";
            }
            }
        
        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = "";
            Label4.Text = "";
            Label5.Text = "";
            Label6.Text = "";
            Label7.Text = "";
            try
            {
                //here we take inputs from clients

                string age = Request["age"].Trim();

                string chest_pain_type = Request["chest_pain_type"];

                string rest_blood_pressure = Request["rest_blood_pressure"].Trim();

                string blood_sugare = Request["blood_sugar"];

                string rest_electro = Request["rest_electro"];

                string max_heart_rate = Request["max_heart_rate"].Trim();

                string exercice_angina = Request["exercice_angina"];

                if (age == "" || chest_pain_type == "" || rest_blood_pressure == "" || blood_sugare == "" || rest_electro == "" || max_heart_rate == "" || exercice_angina == null)
                {
                    Label2.Text = "please enter your full information and in correct format !!";
                    return;
                }

                var valuesForQuery = new Dictionary<string, string>();


                valuesForQuery.Add("age", age);
                valuesForQuery.Add("chest_pain_type", chest_pain_type);
                valuesForQuery.Add("rest_blood_pressure", rest_blood_pressure);
                valuesForQuery.Add("blood_sugar", blood_sugare);
                valuesForQuery.Add("rest_electro", rest_electro);
                valuesForQuery.Add("max_heart_rate", max_heart_rate);
                valuesForQuery.Add("exercice_angina", exercice_angina);


                var data = new DataTable();

                string connectionString = "Data Source=.;Initial Catalog=data_adm;Integrated Security=True";
                string query = "select * from testcsv$";

                SqlConnection sql_conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand(query, sql_conn);
                sql_conn.Open();

                SqlDataAdapter data_adapter = new SqlDataAdapter(cmd);
                data_adapter.Fill(data);


                
                Label2.Text = "the result for id3 is ...";

                Label2.Text += CreateTreeAndHandleUserOperation(data, valuesForQuery);
              
                


                sql_conn.Close();
                data_adapter.Dispose();

            }
            catch (Exception ex)
            {
                Label2.Text = "please try again";
            }
        }
        public static string CreateTreeAndHandleUserOperation(DataTable data, Dictionary<string, string> v)
        {
            
            var decisionTree = new Tree();
            decisionTree.Root = Tree.Learn(data, "");

            var valuesForQuery = v;
            var result = Tree.CalculateResult(decisionTree.Root, v, "");


            if (result.Contains("Attribute not found"))
            {
                return ("No Route Found !!");

            }
            else
            {

                string final = Tree.Print(null, result);
                return final;

                //WebForm1.Label1.Text = final;

            }
        }


        private static void DisplayErrorMessage(string errorMessage)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine($"\n{errorMessage}\n");
            Console.ResetColor();
        }

    }
    }
