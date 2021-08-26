<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerOrderConfirm.aspx.cs" Inherits="WebApplication22.CustomerOrderConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <head>  
 
    <meta charset="utf-8" />  
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />  
    <link href="Content/StyleSheet.css" rel="stylesheet" />  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
</head>  
    <style>
        .btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}

    </style>
    
  
        <div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                         <center>   <p class="text-danger"><b>Order Confirmation</b></p>  
                            <span class="text-info">Proceed to pay and place your order</span>  
                   </center>     </div>  
                        <div class="row" style="font-family: Bahnschrift SemiBold";">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="med_id" EmptyDataText="Cart Empty">
                                        <Columns>  
                                            <asp:BoundField DataField="med_id" HeaderText="Medicine ID" ReadOnly="True" SortExpression="med_id" />  
                                            <asp:BoundField DataField="med_name" HeaderText="Medicine Name" SortExpression="med_name" />  
                                            <asp:BoundField DataField="price" HeaderText="Price per item" SortExpression="price"/>  
                                            <asp:BoundField DataField="quantity" HeaderText="Quantity ordered" SortExpression="quantity" />  
                                            <asp:BoundField DataField="total_price" HeaderText="Total price" SortExpression="total_price" />                                             
                                        </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div> 
                         <div class="jumbotron">  
                     <center>  <p class="text-danger"><span class="glyphicon glyphicon-credit-card"></span><b>Confirm & Pay Rs <asp:Label ID="Label1" runat="server" Text=" "></asp:Label></b> 
                            <br />
                         <span class="text-info">
                             <p>Choose mode of payment</p>
                                <asp:DropDownList ID="DropDownList1" class="btn btn-danger dropdown-toggle" AutoPostBack="true" runat="server"></asp:DropDownList>
                                <br />
                             <hr />
                                <asp:Button ID="Button1" runat="server" class="centerButton btn btn-danger btn-block" Text="Pay Now"  OnClick="Button1_Click1" />
                                <br />
                         <br />
                         <asp:Label ID="Label2" runat="server"></asp:Label>
                                <br />
                                </span>  </center>
                                
                        </div>  
                         </div>
                    </div>
                </div>
            </div>
  
     </b></span>
</asp:Content>

