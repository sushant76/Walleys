<%@ Page Language="C#" AutoEventWireup="true" CodeFile="example.aspx.cs" Inherits="example" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  
    
</head>
<body>
    <form id="form1" runat="server">
          <div>

        <asp:Label ID="Label1" runat="server" Text="Mobile No"></asp:Label>    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />

        <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>

        &nbsp;&nbsp;

        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>

        <br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" Text="Send Sms"

            onclick="Button1_Click" />            

    </div>
     </form>
</body>
</html>