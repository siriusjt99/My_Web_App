<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="My_Web_App.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        body {
            background: linear-gradient(to bottom, #FFFFFF, #F1F1F1);
        }
         .auto-style1 {
             font-weight: 600;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/FindDoc.png" Width="161px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/j-user.png" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/patients.png" Width="153px" />
        <br />
        <br />
        <br />
        <h1>This web app works around three main classes of user.</h1><br />
       <h2> <strong>Doctor&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Admin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Patient</strong></h2>
        <p> &nbsp;</p>
       <h2> F<span class="auto-style1">or Reference</span></h2>
        <asp:BulletedList ID="BulletedList1" runat="server" Height="116px" Width="248px">
            <asp:ListItem>Dr.A</asp:ListItem>
            <asp:ListItem>Dr.B</asp:ListItem>
            <asp:ListItem>Dr.C</asp:ListItem>
            <asp:ListItem>Dr.D</asp:ListItem>
            <asp:ListItem>Dr.E</asp:ListItem>
            <asp:ListItem>Dr.F</asp:ListItem>
        </asp:BulletedList>
        <p>
        </p>
        <h2> &nbsp;<strong><br />
        <br />
            </strong></h2>
        <h2> &nbsp;</h2>
        <h2> 
            <asp:Button ID="Button1" runat="server" BackColor="#006666" OnClick="Button1_Click" Text="Admin Login" />
            <strong><br />
        <br />
        <br />
        </strong><br /></h2>
        </center>
</asp:Content>
