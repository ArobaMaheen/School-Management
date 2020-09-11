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
    public partial class WebForm8 : System.Web.UI.Page
    {

        SqlConnection sqlCon;
            //= new SqlConnection(@"Data Source=(HAIER-PC)\MSSQLSERVER;Initial Catalog=School;Integrated Security=true;");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString;

            sqlCon = new SqlConnection(strcon);
        }

        protected void Add(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("studentCreateUpdate", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Enrollment", (TextBox1.Text == "" ? 0 : Convert.ToInt32(TextBox1.Text)));
            sqlCmd.Parameters.AddWithValue("@FullName", TextBox2.Text.ToString());
            sqlCmd.Parameters.AddWithValue("@FatherName", TextBox5.Text.ToString());
            sqlCmd.Parameters.AddWithValue("@Contact", TextBox4.Text.ToString());
            sqlCmd.Parameters.AddWithValue("@Password", TextBox3.Text.ToString());
            sqlCmd.ExecuteNonQuery();
            sqlCon.Close();
           // string contactID = TextBox1.Text.ToString();
            Response.Write("<script language=javascript>alert('Registered')</script>");
            //if (contactID == "")
            //    lblSuccessMessage.Text = "Saved Successfully";
            //else
            //    lblSuccessMessage.Text = "Updated Successfully";
            //FillGridView();
        }

    }
}