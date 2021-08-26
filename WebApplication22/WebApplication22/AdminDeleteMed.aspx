<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeleteMed.aspx.cs" Inherits="WebApplication22.AdminDeleteMed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
div.ex1 {
  
  padding-left: 500px;
  
}
</style>
   
<br />
     
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    <style>
        body {
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
  
        <div class="container">
            <div class="card text-white" style="background-color:#050d47;margin-bottom:20px;font-family: Bahnschrift SemiBold"  role="form">
                 <body>
              <center> <h2 style="color:white;font-family: Bahnschrift SemiBold">Delete Medicine Item</h2></center> <br />
                <div class="form-group">
                    <label for="id" class="col-sm-3 control-label">Medicine ID</label>
                    <div class="col-sm-9">          
                    <asp:Label ID="Label1" class="form-control" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="uname" class="col-sm-3 control-label">Medicine Name</label>
                    <div class="col-sm-9">          
                    <asp:Label ID="Label2"  class="form-control" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="fname" class="col-sm-3 control-label">Manufacturer</label>
                    <div class="col-sm-9">
                       <asp:Label ID="Label3"   class="form-control" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Disease</label>
                    <div class="col-sm-9">
                        <asp:Label ID="Label4"  class="form-control" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Cost</label>
                    <div class="col-sm-9">
                        <asp:Label ID="Label5"  class="form-control" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                      <asp:Button ID="Button1" runat="server" class="centerButton btn btn-danger btn-block" Text="Delete" OnClick="Button1_Click1" />
                     <div class="form-group">
                    <div class="col-sm-9">
                        <span class="help-block">
      <center>     <asp:Label ID="Label6" runat="server" Text=""></asp:Label></center> </span>
                    </div>
                </div>
                     </div>
   
                
    </div>

</asp:Content>
