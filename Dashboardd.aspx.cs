using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school
{
    public partial class WebForm4 : System.Web.UI.Page
    {
  
     
        SqlConnection sqlCon;
        //int enrllment;
        string que;


        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;

            sqlCon = new SqlConnection(strcon);
            int id = Convert.ToInt32(Session["enroll"]);
            que = "Select * from StudentTable Where Enrollment='" + id + "' ";

            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(que, sqlCon);
            sqlCon = new SqlConnection(strcon);
            SqlDataReader dr = sqlCmd.ExecuteReader();

            bool recordfound = dr.Read();
            if (recordfound)
            {
                Label5.Text = dr["FullName"].ToString();
                Label1.Text = dr["FatherName"].ToString();
                Label6.Text = dr["Enrollment"].ToString();
                Label7.Text = dr["Contact"].ToString();
           

            }
            
            else
            {
                Response.Write("<script language=javascript>alert('Registered')</script>");
            }
            sqlCon.Close();
        }
  
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StLogin.aspx");

        }
    }
}