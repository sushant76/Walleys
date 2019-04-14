using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);        
        con.Open();
        SqlCommand sqlCmd = new SqlCommand("Login", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", TextBox1.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
        
        sqlCmd.ExecuteNonQuery();
        SqlDataReader rd = sqlCmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            //Label3.Visible = true;
            //Label3.Text = "Login successful.";
            // Label3.Visible = true;
            // System.Threading.Thread.Sleep(5000);
            Session["name1"] = TextBox1.Text;
            Application["name1"] = TextBox1.Text;
            Response.Redirect("DuesPage.aspx");
         
        }
        else
        {
            // Label3.Visible = true;
            Label4.Text = "Invalid username or password.";
            Label4.Visible = true;
        }
    }
}
