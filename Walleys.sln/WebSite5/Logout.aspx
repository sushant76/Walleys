<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
