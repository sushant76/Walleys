
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

        <div>
            <asp:Button ID="Button1" runat="server" Text="Student Registration" OnClick="StuClick" />
        </div><div></div>
        <br /><br />
         <div>
            <asp:Button ID="Button2" runat="server" Text="Teacher Registration" onClick="TeaClick"/>
        </div>
</asp:Content>