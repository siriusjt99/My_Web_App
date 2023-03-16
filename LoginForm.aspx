<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="My_Web_App.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    

    <script>
        function ValidateForm()
        {
            var User = document.getElementById("TextBox1").value;
            var Pass = document.getElementById("TextBox2").value;

            if (User == "" && Pass == "")
            {
                alert("User Name and Password are neccesary! please enter and try again");;
                document.getElementById("TextBox1").focus();
                return false;
            }

            else if (User == "")
            {
                alert("Username Necessary ");
                document.getElementById("TextBox1").focus();
                return false;
            }

            else if (User.indexOf("@") == -1 || User.indexOf(".com") == -1) {
                alert("Your email address seems incorrect. Include @ and .com.");
                return false;
            }

            else if (Pass == "") {
                alert("Password Necessary ");
                document.getElementById("TextBox2").focus();
                return false;
            }

            else if (User.length<8) {
                alert("Invalid Length UserName at least 8 character ");
                document.getElementById("TextBox1").focus();
                return false;
            }

            else if (Pass.length < 8||Pass.length > 15) {
                alert("Invalid Length Password at least 8 character ");
                document.getElementById("TextBox2").focus();
                return false;
            }
            
            return true;

                   
        }
    </script>


    <style>
    body {
         margin:0;
         padding:0;
         background-image:url('images/background.jpg');
         background-size:cover;
         font-family:sans-serif;
    }

    .Loginbox {
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
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            height: 650px;
            padding: 80px 40px;
            box-sizing: border-box;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
    </style>

    

</head>
<body>
    
      <form id="form1" runat="server">
       
                 <div class="auto-style1">
                  
                        <center>
                        <h1 class="card-title">Login Page</h1>
                            &nbsp;<p class="card-title">
                                <asp:Image ID="Image1" runat="server" Height="130px" ImageUrl="~/images/create.jpg" Width="134px" />
                            </p>
                            <p class="card-title">&nbsp;</p>
                        <p class="card-title">User Name</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="32px" Width="218px"></asp:TextBox>
                        </p>
                        <p class="card-title">Password</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="32px" Width="218px"></asp:TextBox>
                        </p>

                            <p class="card-title">
                                &nbsp;</p>
                        <p class="card-title">
                            <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderStyle="None" Text="Sign In" OnClick="Button2_Click" OnClientClick="return ValidateForm();" Height="40px" Width="123px" PostBackUrl="~/dashboard.aspx" />
                        </p>
                            <p class="card-title">
                                new user?</p>
                        <p class="card-title">
                            <asp:Button ID="Button3" runat="server" BackColor="#009999" BorderColor="#CCCCCC" BorderStyle="None" Text="Sign Up " OnClick="Button3_Click" Height="38px" Width="127px" PostBackUrl="~/SignUp.aspx" />
                        </p>
                        <p class="card-title">&nbsp;</p>
                        </center>
            </div>
       
    </form>
</body>
</html>
