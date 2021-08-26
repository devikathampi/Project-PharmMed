<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerForgotPW2.aspx.cs" Inherits="WebApplication22.WebForm2" %>
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
 <div class="form-gap" style="margin-top:20px">
<div class="container"  style="font-family: Bahnschrift SemiBold;" >
	<div class="row" >
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
                  <p>Answer security question to generate password</p>
                    <p><b>
       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b></p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form" method="post">
    
                      <div class="form-group">
                          <asp:RequiredFieldValidator ValidationGroup='valGroup14' ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>              
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-hand-right color-blue"></i></span>
                         <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                         
                        </div>
                      </div>
                      <div class="form-group">
     
                      <asp:Button ID="Button1" ValidationGroup="valGroup14" class="btn btn-lg btn-danger btn-block" runat="server" Text="Display password" OnClick="Button1_Click1" />
                      </div>
                        <p><center><b>
           <asp:Label ID="Label3" runat="server" Text=""></asp:Label></b></center></p>
                      
                      <input type="hidden" class="hide" name="token" id="token" value=""> 
                        <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
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
