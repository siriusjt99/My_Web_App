<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientRegistration.aspx.cs" Inherits="My_Web_App.PatientRegistration" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Registration Form</title>

     <style>
    body {
         margin:0;
         padding:0;
         background-image:url('images/background.jpg');
         background-size:cover;
         font-family:sans-serif;
    }

    .Patient {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 350px;
        height: 420px;
        padding: 80px 40px;
        box-sizing: border-box;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }

    .card-title {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        margin-bottom: 20px;
        font-size: 16px;
    }

    input[type="submit"] {
        background-color: #0066FF;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0052cc;
    }

    .card-title img {
        margin-bottom: 20px;
    }

    .card-title p:last-child {
        margin-top: 20px;
        font-size: 14px;
    }
         .auto-style2 {
             position: absolute;
             top: 53%;
             left: 50%;
             transform: translate(-50%, -50%);
             width: 350px;
             height: 741px;
             padding: 80px 40px;
             box-sizing: border-box;
             background-color: #fff;
             border-radius: 10px;
             box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
             margin-left: 0px;
         }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <center>
            <h2>Patient Registration Form</h2>
            <hr />
                <div>
                    <label for="txtPatientName">Patient Name:<br />
                    <br />
                    </label>
                &nbsp;<asp:TextBox ID="txtPatientName" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                <br />
            </div>
            <div>
                <label for="txtRegistrationDate">Registration Date:<br />
                <br />
                </label>
                &nbsp;<asp:TextBox ID="txtRegistrationDate" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                <br />
                <br />
            </div>
            <div>
                <label for="txtAge">Age:<br />
                <br />
                </label>
                &nbsp;<asp:TextBox ID="txtAge" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                <br />
                <br />
            </div>
             <div>
                <label for="txtDoctorName">Doctor Name:<br />
                 <br />
                 </label>
                &nbsp;<asp:TextBox ID="txtDoctorName" runat="server" BackColor="#CCCCCC"></asp:TextBox>
            </div>
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
