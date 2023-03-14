<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="My_Web_App.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Validate()
        {
            var User = document.getElementById("TextBox1").value;
            var Pass = document.getElementById("TextBox2").value;
            var Pass1 = document.getElementById("TextBox3").value;
            var symbolRegex = /[\!\@\#\$\%\^\&\*\(\)\_\+\.\,\;\:\-]/;

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

           else if (!symbolRegex.test(Pass)) { // Check if password contains at least one symbol
           alert("Password must contain at least one symbol: !, @, #, $, %, ^, &, *, (, ), _, +, ., ,, ;, :, -");
           document.getElementById("TextBox2").focus();
           return false;
           } 
           else if (Pass != Pass1) {
           alert("Password do not Match. Try again");
           document.getElementById("TextBox3").focus();
           return false;
           }
            
            return true;

                   
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
       
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <center>
                        <h5 class="card-title">Login Page</h5>
                            
                            &nbsp;<p class="card-title">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/j-user.png" />
                            </p>
                            <p class="card-title">&nbsp;</p>
                            <p class="card-title">&nbsp;</p>
                        <p class="card-title">User Name</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                        </p>
                        <p class="card-title">Password</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                        </p>
                            <p class="card-title">
                                Confirm Password</p>
                            <p class="card-title">
                                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                        </p>
                            <p class="card-title">
                                &nbsp;</p>
                        <p class="card-title">
                            <asp:Button ID="Button2" runat="server" BackColor="#0066FF" BorderStyle="None" Text="Sign In" OnClick="Button2_Click" OnClientClick="return Validate();" Height="40px" Width="123px" />
                        </p>
                            <p class="card-title">
                                &nbsp;</p>
                        <p class="card-title">
                            &nbsp;</p>
                        <p class="card-title">&nbsp;</p>
                        </center>
                         </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
