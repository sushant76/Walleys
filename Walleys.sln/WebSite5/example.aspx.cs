using System;

using System.Configuration;

using System.Data;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Net;



public partial class example : System.Web.UI.Page

{



    string uid;

    string password;

    string message;

    string no;



    protected void Page_Load(object sender, EventArgs e)

    {

    }

    //This is the code of API for sending message.

    public void send()

    {

        HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create("http://ubaid.tk/sms/sms.aspx?uid=" + uid + "&pwd=" + password + "&msg=" + message + "&phone=" + no + "&provider=fullonsms");

        HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();

        System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());

        string responseString = respStreamReader.ReadToEnd();

        respStreamReader.Close();

        myResp.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)

    {

        try

        {

            uid = "";

            password = "";

            message = TextBox2.Text;

            no = TextBox1.Text;

            send();

            TextBox2.Text = "";

            TextBox1.Text = "";

        }

        catch (Exception ex)

        {

            ex.Message.ToString();

        }

    }
}