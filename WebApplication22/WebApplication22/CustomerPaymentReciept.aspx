<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerPaymentReciept.aspx.cs" Inherits="WebApplication22.CustomerPaymentReciept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container bootdey">
<div class="row invoice row-printable">
    <div class="col-md-10">
        <!-- col-lg-12 start here -->
        <div class="panel panel-default plain" id="dash_0">
            <!-- Start .panel -->
            <div class="panel-body p30">
                <div class="row">
                    <!-- Start .row -->
                    <div class="col-lg-6">
                        <!-- col-lg-6 start here -->
                        <div class="invoice-logo"><img width="100" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Invoice logo"></div>
                    </div>
                    <!-- col-lg-6 end here -->
                    <div class="col-lg-6">
                        <!-- col-lg-6 start here -->
                        <div class="invoice-from">
                            <ul class="list-unstyled text-right">
                                <li>PharmMed Ltd.</li>
                                <li>Kerala</li>
                                <li>India</li>
                                <li>VAT Number EU826113958</li>
                            </ul>
                        </div>
                    </div>
                    <!-- col-lg-6 end here -->
                    <div class="col-lg-12">
                        <!-- col-lg-12 start here -->
                        <div class="invoice-details mt25">
                            <div class="well">
                                <ul class="list-unstyled mb0">
                                    <li><strong>Order Date:</strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    </li>                                   
                                    <li><strong>Status:</strong> <span class="label label-danger">PAID</span></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="invoice-items">
                            <div class="table-responsive" style="overflow: hidden; outline: none;" tabindex="0">
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
                      <strong> <div>Total Amount: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></strong> 
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
       </div>
    
</asp:Content>
