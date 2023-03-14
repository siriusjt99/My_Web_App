<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientRegistration.aspx.cs" Inherits="My_Web_App.PatientRegistration" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <h2>Patient Registration Form</h2>
            <hr />
                <div>
                    <label for="txtPatientName">Patient Name:<br />
                    <br />
                    </label>
                &nbsp;<asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                <br />
            </div>
            <div>
                <label for="txtRegistrationDate">Registration Date:<br />
                <br />
                </label>
                &nbsp;<asp:TextBox ID="txtRegistrationDate" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
            </div>
            <div>
                <label for="txtAge">Age:<br />
                <br />
                </label>
                &nbsp;<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
            </div>
             <div>
                <label for="txtDoctorName">Doctor Name:<br />
                 <br />
                 </label>
                &nbsp;<asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
            </div>
                <br />
            <br />
            <asp:Button ID="btnSavePatient" runat="server" Text="Submit" OnClick="btnSavePatient_Click" BackColor="#009999" Height="33px" Width="85px" />
                <br />
            <br />
            <br />
            <div>
                <label for="lblPatientId">Patient ID:</label>
                <asp:Label ID="lblPatientId" runat="server"></asp:Label>
            </div>
                </center>
           
        </div>
    </form>
</body>
</html>
