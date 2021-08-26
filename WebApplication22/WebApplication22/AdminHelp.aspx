<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHelp.aspx.cs" Inherits="WebApplication22.AdminHelp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 331px;
        }
    </style>
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
                            <p class="text-danger"><b>Issues/Tickets raised by customers</b></p>  
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
                        <table class="auto-style3">
       
        <tr>
            <td class="col-sm-2 auto-style4">
                <asp:DropDownList ID="DropDownList1" class="btn btn-danger dropdown-toggle"  runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server"  class="centerButton btn btn-danger btn-block"  OnClick="Button1_Click" Text="Resolve" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                    </div>  
                </div>  
            </div>  
        </div>  
    

      
</body>  
</asp:Content>
