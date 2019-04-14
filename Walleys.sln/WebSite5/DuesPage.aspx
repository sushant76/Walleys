<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DuesPage.aspx.cs" Inherits="DuesPage" %>

<!DOCTYPE html>
<html>
<head>
	<title>DuesPage</title>
	<link rel="stylesheet" href="Css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
     <form id="form1" runat="server">        
    <div>
       <h1>Your Dues</h1>
       <div class="card-deck" style="padding-left: 100px">
        <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="Images/oie_23121054OkpPQnpX.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">View Dues</h5>
            <p class="card-text">Wanna View your dues.</p>
              <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Button" href="#multiCollapseExample122"  aria-expanded="false" aria-controls="multiCollapseExample1" onClick="Button1_Click" />
              
              <a class="btn btn-primary"  data-toggle="collapse" href="#multiCollapseExample122" role="button" aria-expanded="false" aria-controls="multiCollapseExample1" onClick="Button1_Click" >Click here to View</a>

                    <div class="row">
                      <div class="col">
                        <div class="collapse multi-collapse" id="multiCollapseExample122">
                          <div class="card card-body">
                              <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"  PageSize="10">
                        <Columns>
                          <asp:BoundField ItemStyle-Width="150px" DataField="FeeTypeName" HeaderText="Fee Type" />
                          <asp:BoundField ItemStyle-Width="150px" DataField="FeeAmount" HeaderText="Fee Amount" />
                          <asp:BoundField ItemStyle-Width="150px" DataField="DueDate" HeaderText="Due Date" />
       
        
                        </Columns>
                       </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="Images/download.jpg" alt="Card image cap">
          <br>
          <br>
          <br>
          <br>
          <div class="card-body">
            <h5 class="card-title">Current Balance</h5>
            <p class="card-text">Wanna Check Your Current Balance.</p>
               <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Button" href="#multiCollapseExample133"  aria-expanded="false" aria-controls="multiCollapseExample1" onClick="Button2_Click" />
            <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample133" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Check Here</a>

                    <div class="row">
                      <div class="col">
                        <div class="collapse multi-collapse" id="multiCollapseExample133">
                          <div class="card card-body">
                              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                              <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="Images/Coccinelle-Leather-wallet-Soft-984240705.jpg" alt="Card image cap">
          <br>
          <div class="card-body">
            <h5 class="card-title">Add Money</h5>
            <p class="card-text">Add Money to your Wallet.</p>
            <a class="btn btn-primary" data-toggle="collapse" href="AddMoney.aspx" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">+AddMoney</a>
              <asp:LinkButton ID="LinkButton1" runat="server" href="AddMoney.aspx">+AddMoney</asp:LinkButton>
            
        </div>
    </div>
</div>
</div>
<br>
<br>
<div style="padding-right: 100px" align="right">
	<button type="button" id="Paynow" class="btn btn-secondary" runat="server" onserverclick="Paynow_click">PayNow</button>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</form></body>
</html>