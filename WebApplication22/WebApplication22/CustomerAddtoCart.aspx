<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerAddtoCart.aspx.cs" Inherits="WebApplication22.CustomerAddtoCart" %>
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
     <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        </style>
<body>  
    <style>
        .btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}


    </style>


            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                         <center>   <p class="text-danger"><b>Available Medicines</b></p>  
                            <span class="text-info">Click 'Add' to add to cart and 'Remove to remove from cart</span>  
                   </center>     </div>  
                        <div class="row" style="font-family: Bahnschrift SemiBold";"> 
                            <table class="auto-style3">
       
        <tr>
            <td class="col-sm-6" style="padding-bottom:0px;padding-top:0px;">
                
                <asp:TextBox ID="TextBox1" placeholder="Enter Medicine name to search" class="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup='valGroup1' runat="server" ErrorMessage="Please enter medicine name to search" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="col-sm-2" style="padding-bottom:0px;padding-top:0px;">
                <asp:Button ID="Button2" runat="server" ValidationGroup='valGroup1' class="btn btn-danger btn-block"  OnClick="Button2_Click" Text="Search" Height="31px" />
            <br />
            </td>
             <td class="col-sm-4" style="padding-bottom:0px;padding-top:0px;">
                <asp:Button ID="Button3" runat="server"  class="btn btn-danger btn-block"  OnClick="Button3_Click" Text="View All" Height="31px" />
           <br />
                 </td>
        </tr>
    </table>
                            <div class="col-lg-12 " style="font-family: Bahnschrift SemiBold";">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="med_id" EmptyDataText="There are no data records to display." OnRowCommand="GridView1_RowCommand">  
                                        <Columns>  
                                            <asp:BoundField DataField="med_id" HeaderText="Medicine ID" ReadOnly="True" SortExpression="med_id" />  
                                            <asp:BoundField DataField="med_name" HeaderText="Medicine Name" SortExpression="med_name" />  
                                            <asp:BoundField DataField="manufacturer" HeaderText="Name of Manufacturer" SortExpression="manufacturer"/>  
                                            <asp:BoundField DataField="disease" HeaderText="Used for " SortExpression="diseases" />  
                                            <asp:BoundField DataField="mfg_date" HeaderText="Manufactured on" SortExpression="mfg_date" />  
                                            <asp:BoundField DataField="exp_date" HeaderText="Expiry Date" SortExpression="exp_date" />  
                                            <asp:BoundField DataField="cost" HeaderText="Cost" ReadOnly="True" SortExpression="cost" />  
                                            <asp:BoundField DataField="avail_qty" HeaderText="Batch Number" SortExpression="avail_qty" />                                             
                                            <asp:ButtonField ButtonType="Button" CommandName="add" HeaderText="Add to cart" Text="Add" />
                                            <asp:ButtonField ButtonType="Button" CommandName="remove" HeaderText="Remove from cart" Text="Remove" />
                   
                                        </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div> 
                         <div class="jumbotron">  
                     <center>  <p class="text-danger"> <span class="glyphicon glyphicon-shopping-cart"></span><b>Medicines added to cart</b></p>  
                            <span class="text-info"><b>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></b></span>  </center> 
                        </div>  
                        <div class="row" style="font-family: Bahnschrift SemiBold";">  
                            <div class="col-lg-12 " >  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView2" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="MedicineID" EmptyDataText="There are no data records to display." OnRowCommand="GridView1_RowCommand">  
                                        <Columns>  
                                            <asp:BoundField DataField="MedicineID" HeaderText="Medicine ID" ReadOnly="True" SortExpression="MedicineID" />  
                                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />                                                             
                                       </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div> 
                         <div class="jumbotron">  
                         <center>   <p class="text-danger"><b>Click to confirm order and pay</b></p>  
                            <span class="text-info"><b>
                                <asp:Button ID="Button1" runat="server" class="centerButton btn btn-danger btn-block" Text="Proceed" OnClick="Button1_Click" /></b></span>  </center>
                        </div>  
                        </div>
                    </div>
                </div>
            </div>
    </body>
</asp:Content>
