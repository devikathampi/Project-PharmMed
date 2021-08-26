<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="WebApplication22.AdminRegister1" %>
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
        .body {
      background: #6a11cb;
  
  background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

  background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));
   
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

    </style>
</head>
    <div class="body">
         <div class="container py-5 h-100">
        <div class="container">
            <div class="card bg-dark text-white" style="border-radius: 1rem;" role="form">
              <center> <h2  style="font-family: Bahnschrift SemiBold;color:white"class="mb-4 pb-2 pb-md-0 mb-md-5" >Admin Registration</h2></center> 
                <div class="form-group">
                    <label for="id" class="col-sm-3 control-label">Admin ID</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox1" placeholder="Admin ID, Ex:101" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID cannot be blank" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>  
                    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
 ControlToValidate="TextBox1" ErrorMessage="Value must be a number" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="uname" class="col-sm-3 control-label">Admin Username</label>
                    <div class="col-sm-9">          
                    <asp:TextBox ID="TextBox2" placeholder="Admin Username" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username cannot be blank" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>  
                        </div>                   
                    </div>
                
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox5" placeholder="Password" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>  
                    </div>
                </div>
                 <div class="form-group">
                    <label class="control-label col-sm-3">Security Question</label>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9">
                                <label class="radio-inline">
                                    <asp:RadioButton ID="RadioButton3" checked="True" Text="What is the name of your school?" runat="server" GroupName="qn" OnCheckedChanged="RadioButton3_CheckedChanged" />
                                </label>
                            </div>
                            <div class="col-sm-9">
                                <label class="radio-inline">
                                    <asp:RadioButton ID="RadioButton4" Text="What is the name of your Favourite movie?" runat="server" GroupName="qn" OnCheckedChanged="RadioButton4_CheckedChanged" />
                                
                                </label>
                            </div>
                             <div class="col-sm-9">
                                <label class="radio-inline">
                                    
                                    <asp:RadioButton ID="RadioButton5" Text="What is the name of your first pet?" runat="server" GroupName="qn" OnCheckedChanged="RadioButton5_CheckedChanged" />
                               
                                    </label>
                            </div>                          
                        <br />
                        </div>
                    </div>
                </div> 
               
                <div class="form-group">
                    <label for="ans" class="col-sm-3 control-label">Security Qn Answer</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox6" placeholder="Answer" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Answer cannot be blank" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>  
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Email ID</label>
                    <div class="col-sm-9">
                         <asp:TextBox ID="TextBox7" placeholder="Email ID" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Email ID cannot be blank" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>  
                    </div>
                </div>
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                       <asp:TextBox ID="TextBox8" type="date" class="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="DOB cannot be blank" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>  
                        </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <asp:RadioButton ID="RadioButton1" checked="True" runat="server" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" />Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged" />Male
                            
                                    </label>
                               
                            </div>
                        </div>
                    </div>
                </div> 
                <asp:Button ID="Button1" runat="server" style="font-family: Bahnschrift SemiBold;" class="btn btn-outline-light btn-lg px-5"  Text="Register" OnClick="Button1_Click1" />              
        <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>
                    </div>
                </div>
            </div>
       </div>
    </div>
        </div>
   
</asp:Content>
