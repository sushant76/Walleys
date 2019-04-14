<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
    
        <section> <div class="container">
           <div class="inner">
                <asp:Label id="Label1" runat="server" Text="Login"></asp:Label>
            <br />
            <br />
                 <asp:Label id="Label2" CssClass="lbl1 lblstyle" runat="server" Text="USN"></asp:Label>
              
            <br />
                <asp:TextBox ID="TextBox1" CssClass="txtstyle" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Your USN" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="Label4" CssClass="lbl3 lblstyle" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
                 <asp:Label id="Label3" CssClass="lbl2 lblstyle" runat="server" Text="Password"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox2" CssClass="txtstyle" textmode="Password" runat="server" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Your Password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
                <br />
                <br />

            
            <asp:Button ID="Button1" CssClass="btnstyle" runat="server" Text="Login" OnClick="Button1_Click" />
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ForgetPassword.aspx">Forget Password ?</asp:HyperLink>

           </div> </div></section>

      </asp:content>
      
    
   
