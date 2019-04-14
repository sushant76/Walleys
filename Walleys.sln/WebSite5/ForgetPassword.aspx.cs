using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System.Threading;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void SendEmail(object sender, EventArgs e)
    {
        string strcon = @"Server=LAPTOP-68A09JRH ;Initial Catalog=Walleys; Integrated Security=true;";
        SqlConnection con = new SqlConnection(strcon);
       // con.Open();
       // SqlCommand sqlCmd = new SqlCommand("Login", con);
        string username = string.Empty;
        string password = string.Empty;
      //  string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (con)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT StudentUsn, Password FROM StudentRegistration WHERE Email = @Email"))
            {
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["StudentUsn"].ToString();
                        password = sdr["Password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {


            MailMessage mailMessage = new MailMessage("","bustershubhampin@gmail.com");
            mailMessage.Priority = System.Net.Mail.MailPriority.High;
            mailMessage.Body = "reply for online fun gangbuster";
            mailMessage.IsBodyHtml = true;
          
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 25);
            smtpClient.EnableSsl = true;
            NetworkCredential credentials = new NetworkCredential("", "");
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = credentials;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = credentials;
            smtpClient.Send(mailMessage);
           
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = "Password has been sent to your email address.";
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
        }
    }
}

