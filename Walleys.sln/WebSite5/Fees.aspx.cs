using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Fees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("PaymentTableSp", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();
        
        SqlDataReader rd = sqlCmd.ExecuteReader();
        rd.Read();
        Label2.Text = "Your current balance is:-"+rd["Balance"].ToString();
        Label2.Visible = true;
        rd.Close();
    }
}