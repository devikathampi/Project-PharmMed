<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="WebApplication22.CustomerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <style>
 
 .divider:after,
.divider:before {
  content: "";
  flex: 1;
  height: 1px;
  background: #eee;
}
.h-custom {
  height: calc(100% - 73px);
}
@media (max-width: 450px) {
  .h-custom {
    height: 100%;
  }
}
body {
  display: flex;
  flex-direction: column;
  /*min-height: 100vh;*/
}

#footer {
  background-color: #efefef;
  flex: 0 0 50px;/*or just height:50px;*/
  margin-top: auto;
}
.btn-danger
{
   
    color: #ffffff;
    background-color: #ff0039;
    border-color: #ff0039;

}

        </style>
   
    <body >
   
   <section class="min-vh-50" style="font-family: Bahnschrift SemiBold;">
        <br />
  <div class="container-fluid h-custom" style="font-family: Bahnschrift SemiBold;">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5" font-family: Bahnschrift SemiBold;>
        <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.png" class="img-fluid"
          alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        
          

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0">Customer Login<p>
          </div>

          
          <div class="form-outline mb-4" style="font-family: Bahnschrift SemiBold;">
              <asp:TextBox ID="TextBox1" class="form-control form-control-lg" placeholder="Enter username" runat="server"></asp:TextBox>
             <label class="form-label" for="form3Example3">Username</label>
              <asp:RequiredFieldValidator ValidationGroup='valGroup2' ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
              
          </div>

          
          <div class="form-outline mb-3" style="font-family: Bahnschrift SemiBold;">
              <asp:TextBox ID="TextBox2"  type="password"  class="form-control form-control-lg" placeholder="Enter password" runat="server"></asp:TextBox>
             <label class="form-label" for="form3Example4">Password</label>
              <asp:RequiredFieldValidator ValidationGroup='valGroup2' ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
              
          </div>

          <div class="d-flex justify-content-between align-items-center" style="font-family: Bahnschrift SemiBold;">
            
            <div class="form-check mb-0">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
              <asp:LinkButton ID="LinkButton1" class="text-body" runat="server" OnClick="LinkButton1_Click1">Forgot password?</asp:LinkButton>
          </div>

          <div class="text-center text-lg-start mt-4 pt-2">
              <asp:Button ID="Button1" ValidationGroup='valGroup2' class="btn btn-danger btn-block" style="padding-left: 2.5rem; padding-right: 2.5rem;" runat="server" Text="Login" OnClick="Button1_Click1" />
            
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? 
                <asp:LinkButton ID="LinkButton2" class="link-danger" runat="server" OnClick="LinkButton2_Click">Register</asp:LinkButton></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  <br />
</section>
       </body> 
     
</asp:Content>
