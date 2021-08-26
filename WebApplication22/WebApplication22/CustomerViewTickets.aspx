<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerViewTickets.aspx.cs" Inherits="WebApplication22.CustomerViewTickets" %>
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
                            <p class="text-danger"><b>Issues/Tickets raised by you</b></p>  
                            <span class="text-info"></span>  
                        </div>  
                        <div class="row" style="font-family: Bahnschrift SemiBold";">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="issue_id" EmptyDataText="There are no data records to display.">  
                                        <Columns>  
                                            <asp:BoundField DataField="issue_id" HeaderText="Issue ID" ReadOnly="True" SortExpression="issue_id" />  
                                            <asp:BoundField DataField="customer_id" HeaderText="Customer ID" SortExpression="customer_id"  />  
                                            <asp:BoundField DataField="issue" HeaderText="Issue" SortExpression="issue"  />  
                                            <asp:BoundField DataField="description" HeaderText="Description " SortExpression="description" />  
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no"/>  
                                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />  
                                           
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
