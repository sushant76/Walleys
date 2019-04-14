using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void RegClick(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void button1_click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand sqlCmd = new SqlCommand("Login", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", textbox1.Value.ToString());
        sqlCmd.Parameters.AddWithValue("@Password", textbox2.Value.ToString());

        sqlCmd.ExecuteNonQuery();
        SqlDataReader rd = sqlCmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            //Label3.Visible = true;
            //Label3.Text = "Login successful.";
            // Label3.Visible = true;
            // System.Threading.Thread.Sleep(5000);
            Session["name1"] = textbox1.Value.ToString();
            Application["name1"] = textbox1.Value.ToString();
            Response.Redirect("Main.aspx");

        }
        else
        {
            // Label3.Visible = true;
            Label1.Text = "Invalid username or password.";
            Label1.Visible = true;
        }
    }
}
