<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerEditProfile.aspx.cs" Inherits="WebApplication22.CustomerEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
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
        

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #ffffff;
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
   <div class="body">
        <div class="container">

            <div class="card text-white" style="background-color:#050d47;font-family: Bahnschrift SemiBold" role="form">
                
              <center> <h2 style="font-family: Bahnschrift SemiBold;color:white">Edit Profile</h2></center> <br />
                <div class="form-group">
                    <label for="id" class="col-sm-3 control-label">Customer ID</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox1" placeholder="Customer ID, Ex:101" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>              
                    
                    </div>
                </div>
                <div class="form-group">
                    <label for="uname" class="col-sm-3 control-label">Customer Username</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox2" placeholder="Customer Username" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>              
                        </div>
                </div>
                <div class="form-group">
                    <label for="fname" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="TextBox3" placeholder="First Name" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox4" placeholder="Last Name" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox5" placeholder="Password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                 <div class="form-group">                 
                    <label for="email"class="col-sm-3 control-label" >Security Question</label>
                    <div class="col-sm-9">
                        
                       <asp:Label ID="Label2"  runat="server" Text=""></asp:Label>
                    </div>
                </div> 
              
                <div class="form-group">
                    <label for="ans" class="col-sm-3 control-label">Security Qn Answer</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox6" placeholder="Answer" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Email ID</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox7" placeholder="Email ID" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="TextBox8" type="date" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Phone number </label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox9" placeholder="000000"  class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>              
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TextBox9" ErrorMessage="Value must be a number" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox10" placeholder="Street 10, Kerala"  class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="TextBox10" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-9">
                        
                        <asp:TextBox ID="TextBox12"  class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup='valGroup12' ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="TextBox12" ForeColor="Red"></asp:RequiredFieldValidator>              
                    </div>
                </div> 
                <asp:Button ID="Button1" ValidationGroup='valGroup12' runat="server" class="centerButton btn btn-danger btn-block" Text="Update" OnClick="Button1_Click1" />
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>
                    </div>
                </div>
            </div> 
        </div> 
    </body>

</asp:Content>
