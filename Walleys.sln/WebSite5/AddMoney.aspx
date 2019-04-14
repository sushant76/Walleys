<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="AddMoney" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <%--<link rel="stylesheet" type="text/css" href=""C:\Users\HP\Documents\Kalpana\payment.css""> --%> 

  <div class="container" runat="server">
	<div class="accordion" id="accordionExample">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" id="Button" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" >
          Debit Card
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body">
        <div class="card-details">
            <h3 class="title">Debit Card Details</h3>
            <div class="row">
              <div class="form-group col-sm-7">
                <label for="cardholder1">Card Holder</label>
                <input id="cardholder1" runat="server" type="text"  class="form-control" placeholder="Card Holder" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-5">
                <label for="">Expiration Date</label>
                <div class="input-group expiration-date">
                  <input  id="text1" type="text" runat="server"  class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1"/>
                  <span class="date-separator">/</span>
                  <input  id="text2" type="text" runat="server"  class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1"/>
                </div>
              </div>
              <div class="form-group col-sm-6">
                <label for="cardnumber1">Card Number</label>
                <input id="cardnumber1" runat="server" type="text"   class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-2">
                <label for="cvc1">CVC</label>
                <input id="cvc1" type="password" runat="server" class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
                 <div class="form-group col-sm-4">
                <label for="amount1">Amount to be added</label>
                <input id="amount1" type="number" runat="server" class="form-control" placeholder="Amount to be added." aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-12">
                  
                <button  id="Button1" type="button" runat="server" class="btn btn-primary btn-block" onServerClick="button1_click">Proceed</button>
                <button  id="Button3" type="button" runat="server" class="btn btn-primary btn-block" visible="false" onServerClick="button3_click">Proceed1</button>
                  <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label> </div>
            </div>
          </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Credit Card
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample"/>
      <div class="card-body">
       <div class="card-details">
            <h3 class="title">Credit Card Details</h3>
            <div class="row">
              <div class="form-group col-sm-7">
                <label for="cardholder2">Card Holder</label>
                <input id="cardholder2" type="text" runat="server"  class="form-control" placeholder="Card Holder" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-5">
                <label for="">Expiration Date</label>
                <div class="input-group expiration-date">
                  <input id="text3" type="text" runat="server"  class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1"/>
                  <span class="date-separator">/</span>
                  <input  id="text4" type="text" runat="server"  class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1"/>
                </div>
              </div>
              <div class="form-group col-sm-6">
                <label for="cardnumber2">Card Number</label>
                <input id="cardnumber2" type="text" runat="server"  class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-2">
                <label for="cvc2">CVC</label>
                <input id="cvc2" type="password" runat="server"   class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
                   <div class="form-group col-sm-4">
                <label for="amount2">Amount to be added</label>
                <input id="amount2" type="number" runat="server"  class="form-control" placeholder="Amount to be added." aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-12">
                <button id="Button2" runat="server"  type="button" class="btn btn-primary btn-block" onserverclick="Button2_Click" >Proceed</button>
                   <button id="Button4" runat="server"  type="button" class="btn btn-primary btn-block" visible="false" onserverclick="Button4_Click" >Proceed1</button>
                  <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label> </div> </div>
            </div>
          </div>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed"  type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Paytm
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample"/>
      <div class="card-body">
       <div class="card-details">
            <h3 class="title">Paytm Details</h3>
            <div class="row">
              <div class="form-group col-sm-8">
                <label for="cardholder3">Paytm Login</label>
                <input id="cardholder3" type="text" runat="server" class="form-control" placeholder="Userid or Registered Mobile" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              
              <div class="form-group col-sm-8">
                <label for="cardnumber3">Password</label>
                <input id="cardnumber3" type="Password" runat="server" class="form-control" placeholder="Password" aria-label="Card Holder" aria-describedby="basic-addon1"/>
              </div>
              <div class="form-group col-sm-12">
                <button type="button" runat="server" class="btn btn-primary btn-block">Proceed</button>
              </div>
            </div>
          </div>
    </div>
  </div>
</div>
</div></div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</asp:Content>
