<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="My_Web_App.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            background-color: #009999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/patients.png" />
            <br />
            <br />
            Find Doctors and their attended Patients<br />
                <br />
                <br />
            <br />
            <span class="auto-style1">Search Here&nbsp; </span>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="doctor_name" DataValueField="doctor_name" Width="163px">
            </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Search" BackColor="#006666" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="patient_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>

                    <asp:BoundField DataField="patient_id" HeaderText="patient_id" ReadOnly="True" SortExpression="patient_id" />
                    <asp:BoundField DataField="patient_name" HeaderText="patient_name" SortExpression="patient_name" />
                    <asp:BoundField DataField="date_of_registration" HeaderText="date_of_registration" SortExpression="date_of_registration" />
                    <asp:BoundField DataField="doctor_name" HeaderText="doctor_name" SortExpression="doctor_name" />

                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />


                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:doc_infoDBConnectionString %>" SelectCommand="SELECT * FROM [patient_datatbl] WHERE ([doctor_name] = @doctor_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="doctor_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:doc_infoDBConnectionString %>" SelectCommand="SELECT [doctor_name] FROM [doctors_tbl]"></asp:SqlDataSource>


    </form>
</body>
</html>
