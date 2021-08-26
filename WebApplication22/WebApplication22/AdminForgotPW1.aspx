<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminForgotPW1.aspx.cs" Inherits="WebApplication22.AdminForgotPW1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
         <meta content='maximum-scale=1.0, initial-scale=1.0, width=device-width' name='viewport'>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    </head>

    <style>
        .btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}
    </style>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 <div class="form-gap" style="margin-top:20px" >
<div class="container" >
	<div class="row" style="font-family: Bahnschrift SemiBold;">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>Enter username to generate security question</p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                           <asp:RequiredFieldValidator ValidationGroup='valGroup14' ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>              
                        <div class="input-group">
                            
                          <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                         <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                        
                        </div>
                      </div>
                      <div class="form-group">
     
                      <asp:Button ID="Button1" ValidationGroup="valGroup14" class="btn btn-lg btn-danger btn-block" runat="server" Text="Reset Password" OnClick="Button1_Click1" />
                      </div>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                    </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
    </div>
</asp:Content>
