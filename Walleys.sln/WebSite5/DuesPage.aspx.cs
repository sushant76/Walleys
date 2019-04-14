using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DuesPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("DueAmount", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();



        using (SqlDataAdapter sda = new SqlDataAdapter())
        {
            sqlCmd.Connection = con;
            sda.SelectCommand = sqlCmd;
            SqlDataReader reader = sqlCmd.ExecuteReader();

            reader.Read();

            if (!reader.HasRows)
            {
                Label1.Text = "No Dues";
                Label1.Visible = true;
                reader.Close();
            }
            else
            {
                reader.Close();

                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        con.Close();


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
        Label2.Text = "Your current debit balance is:-" + rd["amount1"].ToString();
        Label3.Text = "Your current credit balance is:-" + rd["amount2"].ToString();
        Label2.Visible = true;
        rd.Close();
    }

    protected void Paynow_click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentPage.aspx");
    }
}