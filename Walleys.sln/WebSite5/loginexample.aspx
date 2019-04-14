<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginexample.aspx.cs" Inherits="loginexample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/loginexample.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Site<span>Random</span></div>
		</div>
		<br/>
		<div class="login">
				<input type="text" placeholder="username" name="user"/><br>
				<input type="password" placeholder="password" name="password"/><br>
				<input type="button" value="Login"/>
		</div>
    </form>
</body>
</html>
