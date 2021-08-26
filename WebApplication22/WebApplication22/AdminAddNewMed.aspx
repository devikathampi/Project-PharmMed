<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddNewMed.aspx.cs" Inherits="WebApplication22.AdminAddNewMed" %>
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
               
              <center> <h2 style="font-family: Bahnschrift SemiBold;color:white">Add new medicine</h2></center> <br />
                <div class="form-group">
                    <label for="id" class="col-sm-3 control-label">Medicine ID</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>   
                         <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TextBox1" ErrorMessage="Value must be a number" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="uname" class="col-sm-3 control-label">Medicine Name</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="fname" class="col-sm-3 control-label">Manufacturer</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="TextBox3" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Disease</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox4" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>              

                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Mfg Date</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox5" class="form-control" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>              
                 
                    </div>
                </div>
      
              
                <div class="form-group">
                    <label for="ans" class="col-sm-3 control-label">Expiry Date</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox6"  class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>              

                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Cost</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>              
                            <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TextBox7" ErrorMessage="Value must be a number" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Batch Number</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="TextBox8" class="form-control" runat="server" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup1' ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>              
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
         ControlToValidate="TextBox8" ErrorMessage="Value must be a number" />
                    </div>
                </div>
                
                
                <asp:Button ID="Button1" ValidationGroup='valGroup1' runat="server" class="centerButton btn btn-danger btn-block" Text="Add" OnClick="Button1_Click1" />
                <div class="form-group">
                    <div class="col-sm-12">
                        <span class="help-block">
        <center>  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></span></center>  
                    </div>
                </div>
            </div> 
        </div> 
    </body>
</asp:Content>
