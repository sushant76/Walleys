/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;
using System.Web.Script.Serialization;


    public partial class callback : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        //string MERCHANTKEY = “my merchant key”;
        Dictionary parameters = new Dictionary<string,string>();
        string paytmChecksum = "";

        foreach (string key in Request.Form.Keys)
        {
            parameters.Add(key.Trim(), Request.Form[key].Trim());
        }
        if (parameters.ContainsKey("CHECKSUMHASH"))
        {
            paytmChecksum = parameters["CHECKSUMHASH"];
            parameters.Remove("CHECKSUMHASH");
        }
        if (CheckSum.verifyCheckSum(MERCHANTKEY, parameters, paytmChecksum))
        {
            Response.Write("Checksum match");
        }
        else { Response.Write("Checksum Mismatch"); }

        Response.AddHeader("Content - type", "text / html");
        Request.Form["Status"].ToString();
        string outputHTML = ""; outputHTML += "";
        outputHTML += "";
        outputHTML += "Paytm";
        outputHTML += "< script type ="text / javascript">// <![CDATA[";outputHTML += "function response() {"; outputHTML += "return document.getElementById('response').value;"; outputHTML += "}"; outputHTML += "// ]]></script>";
outputHTML += ""; outputHTML += "";
        outputHTML += "Redirect back to the app";
        outputHTML += "";

< form method ="post"name ="frm">";
        outputHTML += "< input id ="response" name ="responseField" type ="hidden" value ="" + new JavaScriptSerializer().Serialize(parameters) + "" />";
        outputHTML += "</ form >”;
        outputHTML += ""; outputHTML += "";



        Response.Write(outputHTML);

    }
}
//}*/




   

