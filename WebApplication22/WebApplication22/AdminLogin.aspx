<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication22.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style>
        .gradient-custom {
  
  background: #6a11cb;
  
  background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

  background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
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
    </style>
    <body>
    <section class="vh-50 gradient-custom" style="font-family: Bahnschrift SemiBold;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Admin Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>

              <div class="form-outline form-white mb-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup='valGroup1' runat="server" ErrorMessage="Please enter username" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
              
                  <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg"></asp:TextBox>
                <label class="form-label" for="typeEmailX">Username</label>
                  </div>
                 

              <div class="form-outline form-white mb-4">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup='valGroup1' runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox2" type="password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                    <label class="form-label" for="typeEmailX">Password</label>
                  </div>
                  
              

              <p class="small mb-5 pb-lg-2">
                  <asp:LinkButton ID="LinkButton1" class="text-white-50" runat="server" OnClick="LinkButton1_Click">Forgot Password?</asp:LinkButton></p>
                <div>
                  <p class="mb-0">
                    <b>  <asp:Label ID="Label1" runat="server" Text=""></asp:Label></b></p>
              </div>
              
                <asp:Button ID="Button1" ValidationGroup='valGroup1' class="btn btn-outline-light btn-lg px-5" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
               
            <div>
              <p class="mb-0">Don't have an account?
                  <asp:LinkButton ID="LinkButton2" class="text-white-50 fw-bold" runat="server" OnClick="LinkButton2_Click1">Register Here!</asp:LinkButton></p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
        
</section>
        </body>
    
</asp:Content>
