<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 104px;
            height:102px;
        }
    </style>


        
         <div class="container">
            <div class="row">
                <div class="col-md-6 col-8">
                   <asp:LinkButton ID="MyLinkButton" runat="server" PostBackUrl="~/Info.aspx" ToolTip="Click for info"  ><img src="Images/userinfo.png" alt="sorry" class="auto-style1" /></asp:LinkButton>
                </div>
               <div class="col-md-6 col-8">
                   <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/MyDoc.aspx"  ToolTip="Click for Documents"> <img src="Images/userinfo.png" alt="sorry" class="auto-style1" /></asp:LinkButton>
                </div>
                
               <%--<div class="col-sm-3 col-8">
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/LinkedWallet.aspx"  ><img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div> --%> </div><br /><br />
            <div class="row">
                <%--   <div class="col-sm-3 col-8">
                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/Notification.aspx"  ><img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div>
                <div class="col-sm-3 col-8">
                    <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Default.aspx"  ><img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div>
                <div class="col-sm-3 col-8">
                   <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/Default.aspx"  > <img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div>--%>
                <div class="col-md-6 col-8">
                   <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/AddMoney.aspx" ToolTip="Click for Recharging Wallet" > <img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div>
                 <div class="col-md-6 col-8">
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/DuesPage.aspx" ToolTip="Click for Dues" ><img src="Images/userinfo.png" alt="sorry" class="auto-style1"/></asp:LinkButton>
                </div>
              
            </div>
        </div>
       
   
</asp:content>
