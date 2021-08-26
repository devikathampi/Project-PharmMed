<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="WebApplication22.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style>
      html,body{
    margin:0;
    height:100%;
}
img{
  display:block;
  width:50%; height:50%;
  object-fit: cover;
   margin-left: auto;
  margin-right: auto;
 
}  
 </style>
   
    <div style="font-family: Bahnschrift SemiBold";">
     <h2 style="color:#ff0039">   <center>Welcome <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></center></h2>
    </div>
    
    <div>
        <img src="img/imglog.jpg" alt="Image">
    </div>
</asp:Content>
