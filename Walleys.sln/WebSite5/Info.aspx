
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <h4 class="page-sub-header"><i>Registration</i></h4>
        <hr />
    <div class="form-horizontal">
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label1" CssClass="control-label col-md-2" runat="server" Text="Student Usn"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label2" CssClass="control-label col-md-2" runat="server" Text="First Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
      
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label3" CssClass="control-label col-md-2" runat="server" Text="Last Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label4" CssClass="control-label col-md-2" runat="server" Text="Sex"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
        
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label5" CssClass="control-label col-md-2" runat="server" Text="DOB"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label6" CssClass="control-label col-md-2" runat="server" Text="Email"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                </div></div>
     
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label7" CssClass="control-label col-md-2" runat="server" Text="State"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label8" CssClass="control-label col-md-2" runat="server" Text="City"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
      
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label9" CssClass="control-label col-md-2" runat="server" Text="College Name"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label10" CssClass="control-label col-md-2" runat="server" Text="College Address"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
  
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label12" CssClass="control-label col-md-3" runat="server" Text="Department"></asp:Label>

                      <div class="col-md-9">
                             <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div>
              <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label13" CssClass="control-label col-md-2" runat="server" Text="Semester"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" ></asp:TextBox>
                        </div>
                </div></div>
      
        <div style="display:flex">
                <div class="form-group col-md-6"  style="display:flex">
                       <asp:Label id="Label11" CssClass="control-label col-md-2" runat="server" Text="Contact"></asp:Label>

                      <div class="col-md-10">
                             <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                        </div>
                </div>
             </div>
         <div style="display:flex">
            <div class="form-group">
                <div class="col-md-offset-10 col-md-10">
                     <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Save" OnClick="Button1_Click" />
                </div>
            </div>  
              <div class="form-group">
                <div class="col-md-offset-10 col-md-10">
                    <asp:Label id="Label14" CssClass="label-success" runat="server" visible="false"></asp:Label>
                    
                </div>
            </div>
        </div>
         </div>
    </div>

</asp:content>
