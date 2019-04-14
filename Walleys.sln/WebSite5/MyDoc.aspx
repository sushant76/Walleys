<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyDoc.aspx.cs" Inherits="MyDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 238px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label><asp:TextBox ID="TextBox1" runat="server" style="margin-left:200px"></asp:TextBox>
        </div><br /><br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="AADHAR NUMBER"></asp:Label><asp:TextBox ID="TextBox2" runat="server" style="margin-left:81px"></asp:TextBox>
        </div><br /><br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="Bank Name"></asp:Label><asp:TextBox ID="TextBox3" runat="server" style="margin-left:143px"></asp:TextBox>
        </div><br /><br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="ACCOUNT NUMBER"></asp:Label><asp:TextBox ID="TextBox4" runat="server" style="margin-left:69px"></asp:TextBox>
        </div><br /><br />
    </form>
</body>
</html>
