<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rental.aspx.cs" Inherits="CarRental.Rental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        body {
            background-image: url("https://www.yeswallpaper.com/storage/upload/user_id_1/2019-download-bright-car-2018-12-13-11-37-19.jpg");
            background-attachment: fixed;
            height: 100%;
            
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
  .k {
	

    padding: 10px;
    background: #b2ff59;
    
}    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class ="k"><asp:Label ID="Label1" runat="server" BorderStyle="Double" Font-Names="Nirmala UI" Font-Size="X-Large" Text="Welcome To Car Rentals"></asp:Label>
            <br /></div> 
        </div>
        &nbsp;<div class ="k"><asp:Label ID="Label13" runat="server" BorderStyle="Double" Font-Names="Nirmala UI" Font-Size="X-Large" Text="Customer Tabel"></asp:Label></div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
       <div class ="k"> <asp:Label ID="Label12" runat="server" BorderStyle="Double" Font-Names="Nirmala UI" Font-Size="X-Large" Text="Car Table"></asp:Label></div>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <div class ="k">
        <asp:Label ID="Label2" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="Entre Car Details "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Names="MV Boli" Font-Size="Large" Text="Entre Customer Details "></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="MV Boli" Text="IDCar"></asp:Label>
        <asp:TextBox ID="Idtextcar" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Font-Names="MV Boli" Text="IDCustomer"></asp:Label>
        <asp:TextBox ID="custtext" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="MV Boli" Text="Make"></asp:Label>
        <asp:TextBox ID="MakeTextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Font-Names="MV Boli" Text="Name"></asp:Label>
        <asp:TextBox ID="nametext" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="MV Boli" Text="Model"></asp:Label>
        <asp:TextBox ID="Modeltextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Font-Names="MV Boli" Text="Date of Birth"></asp:Label>
        <asp:TextBox ID="textdob" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <asp:Label ID="Label10" runat="server" Font-Names="MV Boli" Text="Color"></asp:Label>
        <asp:TextBox ID="Colortext" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="RentCarbtn" runat="server" BackColor="Black" Font-Names="MV Boli" Font-Size="X-Large" ForeColor="#FF6600" Height="36px" OnClick="RentCarbtn_Click" Text="Rent" Width="82px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ReturnCarbtn1" runat="server" BackColor="Black" Font-Names="MV Boli" Font-Size="X-Large" ForeColor="#FF6600" Height="36px" OnClick="ReturnCarbtn1_Click" Text="Return" Width="90px" />
        <br />
        <asp:Label ID="Label11" runat="server" Font-Names="MV Boli" Text="Year"></asp:Label>
        <asp:TextBox ID="YearText" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <asp:Button ID="AddCarbtn" runat="server" BackColor="Black" Font-Names="MV Boli" Font-Size="X-Large" ForeColor="#FF6600" Height="36px" OnClick="AddCarbtn_Click" Text="Add" Width="82px" />
&nbsp;&nbsp;
        <asp:Button ID="UpdateCarbtn" runat="server" BackColor="Black" Font-Names="MV Boli" Font-Size="X-Large" ForeColor="#FF6600" Height="36px" OnClick="UpdateCarbtn_Click" Text="Update" Width="90px" />
&nbsp;&nbsp;
        <asp:Button ID="DeleteCarbtn" runat="server" BackColor="Black" Font-Names="MV Boli" Font-Size="X-Large" ForeColor="#FF6600" Height="36px" OnClick="DeleteCarbtn_Click" Text="Delete" Width="82px" />
    </div></form>
</body>
</html>
