
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherReg.aspx.cs" Inherits="TeacherReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <link rel="stylesheet" href="css/loginexample.css" />
    <section> <div class="container">
           <div class="inner">
                <asp:Label id="Label1" runat="server" Text="Teacher Registration"></asp:Label>
            <br />
            <br />
                 <asp:Label id="Label2" CssClass="lbl1 lblstyle" runat="server" Text="Student Name"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox7" CssClass="txtstyle" runat="server" ></asp:TextBox>
                 <br />
            <br />
                 <asp:Label id="Label3" CssClass="lbl2 lblstyle" runat="server" Text="Student USN"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox8" CssClass="txtstyle"  runat="server" ></asp:TextBox>
            <br />
                    <br />
                 <asp:Label id="Label4" CssClass="lbl3 lblstyle" runat="server" Text="Department"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox9" CssClass="txtstyle" runat="server" ></asp:TextBox>
                 <br />
            <br />
                 <asp:Label id="Label5" CssClass="lbl4 lblstyle" runat="server" Text="Semester"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox10" CssClass="txtstyle"  runat="server" ></asp:TextBox>
            <br />
                    <br />
                 <asp:Label id="Label6" CssClass="lbl1 lblstyle" runat="server" Text="Section"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox11" CssClass="txtstyle" runat="server" ></asp:TextBox>
                 <br />
            <br />
                 <asp:Label id="Label7" CssClass="lbl5 lblstyle" runat="server" Text="Password"></asp:Label>
            <br />
                <asp:TextBox ID="TextBox12" CssClass="txtstyle"   textmode="Password" runat="server" ></asp:TextBox>
            <br />
                <br />

            
            <asp:Button ID="Button2" CssClass="btnstyle" runat="server" Text="Register" OnClick="Button1_Click" />
       </div> </div></section>
      

</asp:Content>