
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
     <script type="text/javascript">
          $(document).ready(function ()
          {              $("#btnSlideToggle").click(function ()
              {
                  $("#login_wrapper").slideToggle();
                  return false;
              });
          });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    
     <asp:Button ID="btnSlideToggle" runat="server" Text="Slide Toggle" />
                                   
            <div class="labelContainer">  Your Name : </div>
            <div class="valueContainer">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div> 

            <div class="clearStyle"></div>
                
            <div class="labelContainer">Email :</div> 
            <div class="valueContainer">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>

            <div class="clearStyle"></div>
                           <div class="labelContainer">Password :</div> 
            <div class="valueContainer">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="clearStyle"></div>

            <div class="buttonLayout">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    
    
    
       <div id="login_wrapper" runat="server">   
        <div id="login">
    
       <div class="container">
	     <div class="accordion" id="accordionExample">
          <div class="card">
          <div class="card-header" id="headingOne">
           
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="accordionExample">
        <div class="card-body">
          <div class="card-details">
              <h3 class="title">Debit Card Details</h3>
               <div class="row">
                <div class="form-group col-sm-7">
                <asp:Label ID="Label1" runat="server" Text="Card Holder Name"></asp:Label>                
                <asp:TextBox ID="TextBox1" class="form-control" aria-label="Card Holder" aria-describedby="basic-addon1" runat="server"></asp:TextBox>
                </div>
              <div class="form-group col-sm-5">
                <asp:Label ID="Label2" runat="server" Text="Expiration Date"></asp:Label>
                <div class="input-group expiration-date">
                    <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1"></asp:TextBox>
                    <span class="date-separator">/</span>
                    <asp:TextBox ID="TextBox3" runat="server"  class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1"></asp:TextBox>
                </div>
              </div>
              <div class="form-group col-sm-6">
                <asp:Label ID="Label3" runat="server" Text="Card Number"></asp:Label>
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1"></asp:TextBox>
               
              </div>
              <div class="form-group col-sm-2">
                <asp:Label ID="Label4" runat="server" Text="CVC"></asp:Label>
                  <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1"></asp:TextBox>
              </div>
                   <div class="form-group col-sm-2">
                <asp:Label ID="Label5" runat="server" Text="Amount to be paid"></asp:Label>
                  <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Amount to be paid" aria-label="Card Holder" aria-describedby="basic-addon1"></asp:TextBox>
              </div>
              <div class="form-group col-sm-12">
                  <asp:Button ID="Button1" runat="server" Text="Proceed"  class="btn btn-primary btn-block"  />
                
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>
    </div></div></div></div></div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</asp:Content>