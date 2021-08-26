<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerViewOrders.aspx.cs" Inherits="WebApplication22.CustomerViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <head>  
 
    <meta charset="utf-8" />  
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />  
    <link href="Content/StyleSheet.css" rel="stylesheet" />  
  
</head>  
<body>  
  
        <br />  
        <div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                            <p class="text-danger"><b>Orders placed by Customers</b></p>  
                            <span class="text-info"></span>  
                        </div>  
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="order_id" EmptyDataText="There are no data records to display.">  
                                        <Columns>  
                                            <asp:BoundField DataField="order_id" HeaderText="Order ID" ReadOnly="True" SortExpression="order_id" />  
                                            <asp:BoundField DataField="customer_id" HeaderText="Customer ID" SortExpression="customer_id" />  
                                            <asp:BoundField DataField="med_id" HeaderText="Medicine ID" SortExpression="med_id" />  
                                            <asp:BoundField DataField="amount" HeaderText="Amount " SortExpression="amount"/>  
                                            <asp:BoundField DataField="mode_of_payment" HeaderText="Mode of payment"  />  
                                            <asp:BoundField DataField="order_date" HeaderText="Order Date"/>  
                                           
                                        </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  
      
</body> 
</asp:Content>
