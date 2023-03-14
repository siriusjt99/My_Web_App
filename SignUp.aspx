<title></title>
     <!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
         <style>
    body {
      background-image: url('images/background.jpg');
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
    </head>
    <body><form id="form1" runat="server">
  
      
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                     <center>
                         <h5 class="card-title">Login Pagerd-title">Login Page</h5>
            &nbsp;
            <p class="card-title">
              <asp:Image ID="Image2" runat="server" ImageUrl="images/j-user.png" />
            </p>
                            <p class="card-title">&nbsp;</p>
                            <p class="card-title">&nbsp;</p>
                        <p class="card-title">User Name</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="37px" Width="201px"></asp:TextBox>
                        </p>
                        <p class="card-title">Password</p>
                        <p class="card-title">
                            <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="37px" Width="201px"></asp:TextBox>
                        </p>
                            <p class="card-title">
                                Confirm Password</p>
                            <p class="card-title">
                                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCCC" Height="37px" Width="201px"></asp:TextBox>
                        </p>
                            <p class="card-title">
                                &nbsp;</p>
                        <p class="card-title">
                            <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderStyle="None" Text="Sign In" OnClick="Button2_Click" OnClientClick="return Validate();" Height="40px" Width="123px" ForeColor="White" />
                        </p>
                            <p class="card-title">
                                &nbsp;</p>
                        <p class="card-title">
                            <asp:Button ID="Button3" runat="server" BackColor="#009999" BorderColor="#CCCCCC" BorderStyle="None" Text="Sign Up " OnClick="Button3_Click" Height="38px" Width="127px" />
                        </p>
                        <p class="card-title">&nbsp;</p>
                        </center>
                         </div>
                </div>
            </div>
       
    </form>
</body>
</html>
