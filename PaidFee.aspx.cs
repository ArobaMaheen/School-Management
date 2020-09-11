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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection sqlCon;
        string que;
        string duemonth;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;

            sqlCon = new SqlConnection(strcon);
            int id = Convert.ToInt32(Session["enroll"]);
            que = "Select * from PaidFees Where Enrollment='" + id + "' ";

            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(que, sqlCon);
            sqlCon = new SqlConnection(strcon);
            SqlDataReader dr = sqlCmd.ExecuteReader();

      
            while (dr.Read())
                {
                duemonth = dr["month"].ToString();
          

                    if (duemonth.Equals("January"))
                    {
                        Label2.Text = dr["Amount"].ToString();
                        Label3.Text = dr["PaidDate"].ToString();
                    }
                    if (duemonth.Equals("February"))
                    {
                        Label1.Text = dr["Amount"].ToString();
                        Label4.Text = dr["PaidDate"].ToString();
                    }
                    if (duemonth.Equals("March"))
                    {
                        Label5.Text = dr["Amount"].ToString();
                        Label6.Text = dr["PaidDate"].ToString();
                    }
                    if (duemonth.Equals("April"))
                    {
                    Label7.Text = dr["Amount"].ToString();
                    Label8.Text = dr["PaidDate"].ToString();
                    }
                    if (duemonth.Equals("May"))
                    {
                    Label9.Text = dr["Amount"].ToString();
                    Label10.Text = dr["PaidDate"].ToString();
                    }
                    if (duemonth.Equals("June"))
                    {
                    Label11.Text = dr["Amount"].ToString();
                    Label12.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("July"))
                    {
                    Label13.Text = dr["Amount"].ToString();
                    Label14.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("August"))
                    {
                    Label15.Text = dr["Amount"].ToString();
                    Label16.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("September"))
                    {
                    Label7.Text = dr["Amount"].ToString();
                    Label8.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("October"))
                    {
                    Label9.Text = dr["Amount"].ToString();
                    Label20.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("November"))
                    {
                    Label21.Text = dr["Amount"].ToString();
                    Label22.Text = dr["PaidDate"].ToString();
                }
                    if (duemonth.Equals("December"))
                    {
                    Label23.Text = dr["Amount"].ToString();
                    Label24.Text = dr["PaidDate"].ToString();

                }
                if (duemonth.Equals("Examination"))
                {
                    Label25.Text = dr["Amount"].ToString();
                    Label26.Text = dr["PaidDate"].ToString();
                }
                if (duemonth.Equals("Miscellenous"))
                {
                    Label27.Text = dr["Amount"].ToString();
                    Label28.Text = dr["PaidDate"].ToString();
                }

               


                }
     
            //else
            //{
            //    Response.Write("<script language=javascript>alert('Registered')</script>");
            //}
            sqlCon.Close();

        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StLogin.aspx");

        }
    }

  
}