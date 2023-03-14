<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientsRegistration.aspx.cs" Inherits="My_Web_App.PatientsRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:Label ID="Label1" runat="server" Text="Patient Name" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtPatientName" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="txtRegistrationDate" runat="server" Text="Registration Date" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="txtPatientAge" runat="server" Text="Age" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDoctorName" runat="server" Text="Doctor Name" ForeColor="#333333"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtDoctorName" runat="server" BackColor="#CCCCCC" Height="28px" Width="185px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblPatientId" runat="server" Text=""></asp:Label>

                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#006666" Height="41px" OnClick="Button1_Click" Text="Submit" Width="115px" />
            </center>
        </div>

    </form>
</body>
</html>
