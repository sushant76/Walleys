using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        SqlCommand sqlCmd = new SqlCommand("CreditselSP", con);
        sqlCmd.CommandType = CommandType.StoredProcedure;
        sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd.ExecuteNonQuery();
        SqlDataReader reader = sqlCmd.ExecuteReader();

     
        if (reader.HasRows)
        {
            reader.Read();
            cardholder2.Value = reader["CardHolderName"].ToString();
            cardholder2.Disabled = true;
            cardnumber2.Value = reader["CardNo"].ToString();
            cardnumber2.Disabled = true;
            text3.Value = reader["ExpirationMonth"].ToString();
            text3.Disabled = true;
            text4.Value = reader["ExpirationYear"].ToString();
            text4.Disabled = true;
            Button2.Visible = false;
            Button4.Visible = true;

        }
        reader.Close();

        SqlCommand sqlCmd1 = new SqlCommand("DebitselSP", con);
        sqlCmd1.CommandType = CommandType.StoredProcedure;
        sqlCmd1.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
        sqlCmd1.ExecuteNonQuery();
        SqlDataReader reader1 = sqlCmd1.ExecuteReader();

       
        if (reader1.HasRows)
        {
            reader1.Read();
            cardholder1.Value = reader1["CardHolderName"].ToString();
            cardholder1.Disabled = true;
            cardnumber1.Value = reader1["CardNo"].ToString();
            cardnumber1.Disabled = true;
            text1.Value = reader1["ExpirationMonth"].ToString();
            text1.Disabled = true;
            text2.Value = reader1["ExpirationYear"].ToString();
            text2.Disabled = true;
            Button1.Visible = false;
            Button3.Visible = true;
           
        }
        else
        {
            Button1.Visible = true;
            Button3.Visible = false;
        }

        reader1.Close();

    }
    protected void button1_click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("DebitaddSP", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@USN", Application["name1"].ToString());
            sqlCmd.Parameters.AddWithValue("@CardHolderName", cardholder1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CardNo", cardnumber1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationMonth", text1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationYear", text2.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CVC", cvc1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@Amount", amount1.Value.ToString());
            sqlCmd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Amount successfully added to your debit account";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CreditaddSP", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@USN", Application["name1"].ToString());
            sqlCmd.Parameters.AddWithValue("@CardHolderName", cardholder2.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CardNo", cardnumber2.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationMonth", text3.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationYear", text4.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CVC", cvc2.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@Amount", amount2.Value.ToString());
            sqlCmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "Amount successfully added to your credit account";
        }
    }
    protected void button3_click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("AddDebitMoney", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@USN", Application["name1"].ToString());
            sqlCmd.Parameters.AddWithValue("@CardHolderName", cardholder1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CardNo", cardnumber1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationMonth", text1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@ExpirationYear", text2.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@CVC", cvc1.Value.ToString());
            sqlCmd.Parameters.AddWithValue("@Amount", amount1.Value.ToString());
            sqlCmd.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "Amount successfully added to your debit account";
        }
    }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
            using (SqlConnection sqlCon = new SqlConnection(strcon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("AddCreditMoney", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@USN", Application["name1"].ToString());
                sqlCmd.Parameters.AddWithValue("@CardHolderName", cardholder2.Value.ToString());
                sqlCmd.Parameters.AddWithValue("@CardNo", cardnumber2.Value.ToString());
                sqlCmd.Parameters.AddWithValue("@ExpirationMonth", text3.Value.ToString());
                sqlCmd.Parameters.AddWithValue("@ExpirationYear", text4.Value.ToString());
                sqlCmd.Parameters.AddWithValue("@CVC", cvc2.Value.ToString());
                sqlCmd.Parameters.AddWithValue("@Amount", amount2.Value.ToString());
                sqlCmd.ExecuteNonQuery();
                Label2.Visible = true;
                Label2.Text = "Amount successfully added to your credit account";
            }
        }
    }