using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace school
{
    public partial class WebForm7 : System.Web.UI.Page
    {

        SqlConnection sqlCon;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;

            sqlCon = new SqlConnection(strcon);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int enroll = Convert.ToInt32(TextBox1.Text);
            string password = Convert.ToString(TextBox3.Text);

            Session["enroll"] = enroll;

            if (sqlCon.State == ConnectionState.Closed)
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM StudentTable WHERE Enrollment=@Enrollment AND Password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                sqlCmd.Parameters.AddWithValue("@Enrollment", enroll);
                sqlCmd.Parameters.AddWithValue("@Password", password);
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    // Session["username"] = txtUserName.Text.Trim();
                    Response.Redirect("Dashboardd.aspx");
                }
            


                else
                {
                    Response.Write("<script language=javascript>alert('Invlid User name or password')</script>");
                }


            }
        }
    }
}