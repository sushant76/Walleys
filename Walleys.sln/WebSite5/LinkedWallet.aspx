
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LinkedWallet.aspx.cs" Inherits="LinkedWallet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="PAYTM"></asp:CheckBox>
            <br /><br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Credit Card"></asp:CheckBox>
            <br /><br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Debit Card"></asp:CheckBox>
            <br /><br />
            <asp:CheckBox ID="CheckBox4" runat="server" Text="NetBanking"></asp:CheckBox>
            <br /><br />
        </div>
            <br /><br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Proceed" />
        </div>
</asp:content>
