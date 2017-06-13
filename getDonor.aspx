<%@ Page Language="C#" AutoEventWireup="true" CodeFile="getDonor.aspx.cs" Inherits="site_getDonor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Donor_address" DataValueField="Donor_address"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FiascoFixConnectionString5 %>" SelectCommand="SELECT [Donor_address] FROM [DonationDetail]"></asp:SqlDataSource>
   <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
        Donor Detail<br />
       NAme&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <br />
        Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
        email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
        Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
        Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text=""></asp:Label><br />
        DateOfBirth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text=""></asp:Label><br />
        Address_LAT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text=""></asp:Label><br />
        Address+Long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text=""></asp:Label><br />
<br /><br />
        Donation Detail<br />
        Donation Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text=""></asp:Label><br />
       Donor_Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text=""></asp:Label><br />
       Donation Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text=""></asp:Label><br />
        Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text=""></asp:Label><br />
        Donation_Lat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text=""></asp:Label><br />
        Donation_Long&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label14" runat="server" Text=""></asp:Label><br />
    </div>
    </form>
</body>
</html>
