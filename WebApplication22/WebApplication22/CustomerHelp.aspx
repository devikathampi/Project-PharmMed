<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerHelp.aspx.cs" Inherits="WebApplication22.CustomerHelp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    <style>
        #body {
     background-color: #ffffff;
    background-size: cover;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: New Century Schoolbook, TeX Gyre Schola, serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}
.btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}

    </style>
</head>
<br />
     <body>
    
   
    <div class="container" style="font-family: Bahnschrift SemiBold;">
        <div class="card text-white" style="background-color:#050d47;font-family: Bahnschrift SemiBold;color:black;" role="form">
             <Center> <h3 class="mb-4 pb-2 pb-md-0 mb-md-5"><b>Raise a Ticket</b></h3> </Center> 
    <div  class="form-group">
    <label for="inputEmail3" class="col-sm-3 control-label">Issue ID</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TextBox1" style="color:black" runat="server" ReadOnly="true" ></asp:TextBox>
    </div>
  </div>
    <div class="form-group ">
    <label for="inputEmail3" class="col-sm-3 control-label">Customer ID</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TextBox2" style="color:black" runat="server"  ReadOnly="true"></asp:TextBox>
    </div>
  </div>
    <div class="form-group">
    <label for="inputEmail" class="col-sm-3 control-label">Issue</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Issue"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup='valGroup3' ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter issue" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>              
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3"class="col-sm-3 control-label"">Description</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TextBox4" runat="server" placeholder="Explain your issue"></asp:TextBox>
        
    </div>
  </div>
    <div class="form-group">
    <label for="inputPassword3" class="col-sm-3 control-label">Contact Number</label>
    <div class="col-sm-9">
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Contact Number"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup='valGroup3' ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter contact number" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>              
    </div>
  </div>
    <div class="form-group">
    
    
        <asp:Button ID="Button1" class="btn btn-danger btn-block" ValidationGroup='valGroup3' runat="server" Text="Raise Ticket" OnClick="Button1_Click1" />
    
        <div class="col-sm-10">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
  </div>
</div> 
        <div class="form-group" style="padding:20px;">
    
    <center>
        <asp:Button ID="Button2" class="btn btn-danger btn-block" style="max-width:530px;" runat="server" Text="View status of your tickets" OnClick="Button2_Click" />
       </center>
        </div>
        </div>
         </body>
</asp:Content>
