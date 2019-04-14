using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class PaymentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void button1_click(object sender, EventArgs e)
    {
       
            string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
            using (SqlConnection sqlCon = new SqlConnection(strcon))
            {         
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("DebitMoney", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
                sqlCmd.Parameters.AddWithValue("@Amount", amount1.Value.ToString());
                int count = sqlCmd.ExecuteNonQuery();
                if (count > 0)
                {
                    Label2.Text = "Successful payment";
                    Label2.Visible = true;
                }
                else
                {
                    Label2.Text = "Less money in your account.Add money";
                    Label2.Visible = true;
                    HyperLink1.Visible = true;

                }
                SqlCommand sqlCmd1 = new SqlCommand("ClearDues", sqlCon);
                sqlCmd1.CommandType = CommandType.StoredProcedure;
                sqlCmd1.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
                sqlCmd1.Parameters.AddWithValue("@Amount", amount1.Value.ToString());
                sqlCmd1.ExecuteNonQuery();

            }
       // }
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        using (SqlConnection sqlCon = new SqlConnection(strcon))
        {
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("CreditMoney", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
            sqlCmd.Parameters.AddWithValue("@Amount", amount2.Value.ToString());
            int count = sqlCmd.ExecuteNonQuery();
            if (count > 0)
            {
                Label3.Text = "Successful payment";
                Label3.Visible = true;
            }
            else
            {
                Label3.Text = "Less money in your account.Add money";
                Label3.Visible = true;
                HyperLink2.Visible = true;

            }
            SqlCommand sqlCmd1 = new SqlCommand("ClearDues", sqlCon);
            sqlCmd1.CommandType = CommandType.StoredProcedure;
            sqlCmd1.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
            sqlCmd1.Parameters.AddWithValue("@Amount", amount2.Value.ToString());
            sqlCmd1.ExecuteNonQuery();

        }
    }
    protected void Dropdown(object sender, EventArgs e)
    {

           if (DropDownList1.SelectedValue == "")
           {
               Label4.Text = "Please Select a Fee Type";
               Label4.Visible = true;
           }
           else
           {       
             string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
              using (SqlConnection sqlCon = new SqlConnection(strcon))
              {
                sqlCon.Open();
                SqlCommand sqlCmd2 = new SqlCommand("FeeAmount", sqlCon);
                sqlCmd2.CommandType = CommandType.StoredProcedure;
                sqlCmd2.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
                sqlCmd2.Parameters.AddWithValue("@FeeTypeName", DropDownList1.SelectedValue);
                 sqlCmd2.ExecuteNonQuery();
                  SqlDataReader reader = sqlCmd2.ExecuteReader();

                reader.Read();
                if (reader.HasRows)
                {
                    amount1.Value = reader["FeeAmount"].ToString();
                   amount1.Disabled = true;
                    Label4.Visible = false;
                }
                else
                {
                    Label4.Text = "No dues for this fee type";
                    Label4.Visible = true;
                    amount1.Value = null;
                    amount1.Disabled = true;
                }
              }
           }

    }
    protected void Dropdown1(object sender, EventArgs e)
    {

        if (DropDownList2.SelectedValue == "")
        {
            Label5.Text = "Please Select a Fee Type";
            Label5.Visible = true;
        }
        else
        {
            string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
            using (SqlConnection sqlCon = new SqlConnection(strcon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd2 = new SqlCommand("FeeAmount", sqlCon);
                sqlCmd2.CommandType = CommandType.StoredProcedure;
                sqlCmd2.Parameters.AddWithValue("@Usn", Application["name1"].ToString());
                sqlCmd2.Parameters.AddWithValue("@FeeTypeName", DropDownList2.SelectedValue);
                sqlCmd2.ExecuteNonQuery();
                SqlDataReader reader = sqlCmd2.ExecuteReader();

                reader.Read();
                if (reader.HasRows)
                {
                    amount2.Value = reader["FeeAmount"].ToString();
                    amount2.Disabled = true;
                    Label5.Visible = false;
                }
                else
                {
                    Label5.Text = "No dues for this fee type";
                    Label5.Visible = true;

                    amount2.Value = null;
                    amount2.Disabled = true;
                }
            }
        }
        
    }
}