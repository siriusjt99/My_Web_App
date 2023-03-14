<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorRegistration.aspx.cs" Inherits="My_Web_App.DoctorRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <h2>Doctor Registration Form</h2>
            <hr />
            <div>
                <label for="txtDoctorName">Doctor Name:<br />
                <br />
                <br />
                </label>
                &nbsp;<asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
            </div>
            <div>
                <label for="txtSpecialization">Specialization:</label>
                <br />
                <br />
                <br />
                <asp:TextBox ID="txtSpecialization" runat="server"></asp:TextBox>
                <br />
            </div>
           
                <br />
            <br />
            <asp:Button ID="btnSaveDoctor" runat="server" Text="Submit" OnClick="btnSaveDoctor_Click" BackColor="#009999" Height="33px" Width="85px" />
                <br />
            <br />
            <br />
            <div>
                <label for="lblDoctorId">Doctor ID:</label>
                <asp:Label ID="lblDoctorId" runat="server"></asp:Label>
            </div>
                </center>
           
        </div>
    </form>
</body>
</html>

