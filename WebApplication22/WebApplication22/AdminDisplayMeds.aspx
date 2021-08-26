<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDisplayMeds.aspx.cs" Inherits="WebApplication22.AdminDisplayMeds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <meta charset="utf-8" />  
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />  
    <link href="Content/bootstrap.cosmo.min.css" rel="stylesheet" />  
    <link href="Content/StyleSheet.css" rel="stylesheet" />  
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        .btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}

    </style>

     <div id="mainContainer" class="container" style="font-family: Bahnschrift SemiBold";">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">  
                        <div class="jumbotron">  
                         <center>   <p class="text-danger"><b>Available Medicines</b></p>  
                            <span class="text-info">Update Delete and Insert Medicine data</span>  
                   </center>     </div>  
                        <div >
                        <center>  <asp:Button runat="server" class="centerButton btn btn-danger btn-block" Text="Click to Insert New Record" OnClick="NewButton1_Click" /> </center>  
                        </div>
                        <br />
                        <div class="row" style="font-family: Bahnschrift SemiBold";">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive" >  
                                    <asp:GridView ID="GridView1" runat="server" Width="100%"  AllowPaging="True" CssClass="table table-striped table-bordered table-hover"  AutoGenerateColumns="False" DataKeyNames="med_id" EmptyDataText="There are no data records to display." OnRowCommand="GridView1_RowCommand">  
                                        <Columns>  
                                            <asp:BoundField DataField="med_id" HeaderText="Medicine ID" ReadOnly="True" SortExpression="med_id" />  
                                            <asp:BoundField DataField="med_name" HeaderText="Medicine Name" SortExpression="med_name" />  
                                            <asp:BoundField DataField="manufacturer" HeaderText="Name of Manufacturer" SortExpression="manufacturer"/>  
                                            <asp:BoundField DataField="disease" HeaderText="Used for " SortExpression="diseases" />  
                                            <asp:BoundField DataField="mfg_date" HeaderText="Manufactured on" SortExpression="mfg_date" />  
                                            <asp:BoundField DataField="exp_date" HeaderText="Expiry Date" SortExpression="exp_date" />  
                                            <asp:BoundField DataField="cost" HeaderText="Cost" ReadOnly="True" SortExpression="cost" />  
                                            <asp:BoundField DataField="avail_qty" HeaderText="Batch Number" SortExpression="avail_qty" />                                             
                                            <asp:ButtonField ButtonType="Button" CommandName="edit" HeaderText="Edit" Text="Edit"  />
                                            <asp:ButtonField ButtonType="Button" CommandName="delete" HeaderText="Delete" Text="Delete" />                  
                                        </Columns>  
                                    </asp:GridView>  
                                </div>  
                            </div>  
                        </div>                       
                        </div>
                    </div>
                </div>
        </div>
                        
</asp:Content>
