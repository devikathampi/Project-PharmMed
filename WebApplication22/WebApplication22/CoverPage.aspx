<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CoverPage.aspx.cs" Inherits="WebApplication22.CoverPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
      <style>
      html,body{
    margin:0;
    height:100%;
}
img{
  display:block;
  width:100%; height:50%;
  object-fit: cover;
  margin-left:auto;
  margin-right:auto;
   
}  
          </style>
   <div>
        <img src="img/img5.png" alt="Image">
    </div>
</asp:Content>
