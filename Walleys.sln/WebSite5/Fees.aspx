
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fees.aspx.cs" Inherits="Fees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
                        
                   
     <asp:Button ID="Button2" runat="server" Text="Current Balance" OnClick="Button2_Click"/> 
     <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
        
    
     <asp:Button ID="Button3" runat="server" Text="Add Money" /> 
     <asp:Label ID="Label3" runat="server" Text="Label" Visible="false"></asp:Label>

</asp:content>
