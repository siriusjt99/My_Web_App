<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorRegistration.aspx.cs" Inherits="My_Web_App.DoctorRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <center>
                 <h1>Doctor Registration</h1>
                 <p>
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/DocIcon.png" Width="100px" />
                 </p>
                <asp:Label ID="lblDoctorName" runat="server" Text="Doctor Name" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtDoctorName" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblSpecialty" runat="server" Text="Specialty" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtDoctorSpecialization" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />   
                 <asp:Label ID="lblDoctorId" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <br />
               <asp:Button ID="btnCreateDoctor" runat="server" Text="Submit" OnClick="btnCreateDoctor_Click" BackColor="#006666" Height="45px" Width="133px" />
               <center>
        </div>
    </form>
</body>
</html>
