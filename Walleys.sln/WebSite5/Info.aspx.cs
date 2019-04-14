using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        
        SqlCommand sqlCmd = new SqlCommand("Info", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn",Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();
        SqlDataReader reader = sqlCmd.ExecuteReader();

        reader.Read();
        TextBox1.Text = reader["StudentUsn"].ToString();
        TextBox2.Text = reader["FirstName"].ToString();
        TextBox3.Text = reader["LastName"].ToString();
        TextBox6.Text = reader["Email"].ToString();
        TextBox9.Text = reader["CollegeName"].ToString();
        TextBox10.Text = reader["CollegeAddress"].ToString();
        TextBox12.Text = reader["Department"].ToString();
        TextBox13.Text = reader["Semester"].ToString();
        reader.Close();

        SqlCommand sqlCmd1 = new SqlCommand("PersonalInfoAdd", con);
        sqlCmd1.CommandType = CommandType.StoredProcedure;
        sqlCmd1.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd1.ExecuteNonQuery();
        SqlDataReader rd = sqlCmd1.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            TextBox4.Text = rd["Sex"].ToString();
            TextBox5.Text = rd["DOB"].ToString();
            TextBox7.Text = rd["State"].ToString();
            TextBox8.Text = rd["City"].ToString();
            TextBox11.Text = rd["Contact"].ToString();
            rd.Close();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand sqlCmd = new SqlCommand("PersonalInfo", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", TextBox1.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Sex", TextBox4.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@DOB", TextBox5.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@City", TextBox8.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@State", TextBox7.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@Contact", TextBox11.Text.Trim());
        sqlCmd.ExecuteNonQuery();
        con.Close();
        Button1.Visible = false;
        Label14.Text = "Your details has been succesfully saved";
        Label14.Visible = true;
    }
}