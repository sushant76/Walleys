<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style6 {
            left: 319px;
            top: 208px;
        }
    </style>
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <link rel="stylesheet" href="css/loginexample.css" />


 Email Address:
<asp:TextBox ID="txtEmail" runat="server" Width = "250" />
<br />
<asp:Label ID="lblMessage" runat="server" />
<br />
<asp:Button Text="Send" runat="server" OnClick="SendEmail" />
    </asp:Content>