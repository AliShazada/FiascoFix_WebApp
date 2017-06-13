<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reportform.aspx.cs" Inherits="ff_site_reportform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate</title>
    <meta charset="utf-8">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
	<script type="text/javascript" src="js/cufon-yui.js"></script>
	<script type="text/javascript" src="js/Myriad_Pro_italic_400-Myriad_Pro_italic_600.font.js"></script>
	<script type="text/javascript" src="js/cufon-replace.js"></script>	
	<script type="text/javascript" src="js/jquery.faded.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
    <style type="text/css">
        .auto-style2
        {
            width: 352px;
        }
        .auto-style7
        {
            width: 147px;
            height: 45px;
        }
        .auto-style8
        {
            height: 45px;
        }
        .auto-style9
        {
            width: 147px;
            height: 46px;
        }
        .auto-style10
        {
            height: 46px;
        }
        .auto-style11
        {
            width: 276px;
            height: 30px;
        }
        .auto-style12
        {
            height: 30px;
        }
        .auto-style13
        {
            width: 276px;
        }
        .auto-style18
        {
            width: 145px;
        }
    </style>
    <script type="text/javascript" language="javascript">
        
        function select_donation(Selectedtype) {
            var donation = Selectedtype;
            if (donation == "Other")
            {
                document.getElementById('other').style.display = "block";
                document.getElementById('quantity').style.display = "none";
                document.getElementById('amount').style.display = "none";
            }
            else if (donation == "-Category-") {
                document.getElementById('amount').style.display = "none";
                document.getElementById('quantity').style.display = "none";
                document.getElementById('other').style.display = "none";
            }
            else if (donation == "Cash") {
                document.getElementById('amount').style.display = "block";
                document.getElementById('quantity').style.display = "none";
                document.getElementById('other').style.display = "none";
            }
            else {
                document.getElementById('quantity').style.display = "block";
                document.getElementById('amount').style.display = "none";
                document.getElementById('other').style.display = "none";
            }
        }
        function postback() {
            document.getElementById('quantity').style.display = "none";
            document.getElementById('amount').style.display = "none";
            document.getElementById('other').style.display = "none";
        }
</script>
    <script>
        function get_address() {
            document.getElementById('Donation_address').style.display = "block";
        }
        function hover() {
            document.getElementById('add').style.color = "white";
        }
        function hoverout() {
            document.getElementById('add').style.color = "red";
        }
    </script>
     <script>
         function select_City(Selectedtype) {
             city = Selectedtype;
             if(city=="-City-")
             {
                 document.getElementById('Islamabad').style.display = "none";
                 document.getElementById('city_other').style.display = "none";
             }
             else if (city == "Islamabad") {
                 document.getElementById('Islamabad').style.display = "block";
                 document.getElementById('city_other').style.display = "none";
             }
             else {
                     document.getElementById('Islamabad').style.display = "none";
                     document.getElementById('city_other').style.display = "block";
             }
         }
    </script>
</head>
<body onload="postback()">
    <header style="height:100px">
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="Default.aspx" class="current">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="Signout.aspx">SIGNOUT</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
            </div>
         </header>
    <form id="form1" runat="server">
    <div style="background-image:url(images/body.jpg); color:black;">
        <br />
     <h4 style="margin-left:250px;color:black">Feilds with asterik(<font color="red">*</font>) are required to be filled out in order to process this form</h4>

        <br />
   <p style="color:black"><table id="table1" style="margin-left:280px; width: 545px; height: 61px;" >
   <tr style="margin-left:25px">
     <td class="auto-style11" ><b>Name: </b><asp:Label ID="userName" runat="server" Text=""></asp:Label></td>
     <td class="auto-style12"><b>Phone#: </b><asp:Label ID="Phone" runat="server" Text=""></asp:Label></td>
   </tr>
   <tr >
     <td class="auto-style13"><b>Email: </b><asp:Label ID="Email" runat="server" Text=""></asp:Label></td>
     <td><b>Address: </b><asp:Label ID="Address" runat="server" Text=""></asp:Label></td>
   </tr>
</table></p>
        <br />
   <table id="table2" style="margin-left:280px;" >
   <tr style="margin-left:25px">
     <td class="auto-style7" ><asp:Label ID="Label1" runat="server" Text="Disaster"></asp:Label></td>
     <td class="auto-style8"><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="DisasterName" DataValueField="DisasterName" Height="25px" Width="200px"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [DisasterName] FROM [Disaster]"></asp:SqlDataSource>
         <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Disaster_Name %>" SelectCommand="SELECT [DisasterName] FROM [Disaster]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>--%>
       </td>
   </tr>
   <tr >
     <td class="auto-style9" ><asp:Label ID="Label3" runat="server" Text="Donation Location"></asp:Label></td>
     <td class="auto-style10"><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="DisasterLocation" DataValueField="DisasterLocation" Height="25px" Width="200px"></asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT [DisasterLocation] FROM [Disaster]"></asp:SqlDataSource>
         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Donation_Location %>" SelectCommand="SELECT [DisasterLocation] FROM [Disaster]"></asp:SqlDataSource>--%>
       </td>
   </tr>
       <tr >
     <td class="auto-style7" ><asp:Label ID="Label2" runat="server" Text="Donation Category"></asp:Label></td>
     <td class="auto-style8"><asp:DropDownList ID="DropDownList3" onchange="javascript: select_donation(this.options[this.selectedIndex].text);" runat="server" Height="25px" Width="200px">
         <asp:ListItem>-Category-</asp:ListItem>
         <asp:ListItem>Water Bottles</asp:ListItem>
         <asp:ListItem>Blankets</asp:ListItem>
         <asp:ListItem>Other</asp:ListItem>
         <asp:ListItem>Cash</asp:ListItem>
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" SelectCommand="SELECT [DonationCategory] FROM [DonationDetail]"></asp:SqlDataSource>
           </td>
   </tr>
</table>
        <table id="amount" class="auto-style2" style="margin-left:280px;display:block">
        <tr >
     <td class="auto-style18" ><asp:Label ID="Label4" runat="server" Text="Amount"></asp:Label></td>
     <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
         </tr>
        </table>
        <table id="quantity" class="auto-style2" style="margin-left:280px;display:block">
            <tr >
     <td class="auto-style18" ><asp:Label ID="Label9" runat="server" Text="Quantity"></asp:Label></td>
     <td><asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox></td>
         </tr>
        </table>
        <table id="other" class="auto-style2" style="margin-left:280px;display:block">
              <tr >
     <td class="auto-style18" ><asp:Label ID="Label10" runat="server" Text="Category"></asp:Label></td>
     <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
         </tr>
              <tr >
     <td class="auto-style18" ><asp:Label ID="Label11" runat="server" Text="Quantity"></asp:Label></td>
     <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
         </tr>
        </table>
      
        <label style="margin-left:280px;color:red" id="add" onclick="get_address()" onmouseover="hover()" onmouseout="hoverout()" >Change Address For Donation Collection?</label> <br />  <br />
        <table id="Donation_address" class="auto-style2" style="margin-left:280px;display:none;">
            <tr >
     <td class="auto-style18" ><asp:Label ID="Label5" runat="server" Text="City"></asp:Label></td>
     <td><asp:DropDownList ID="DropDownList4" onchange="javascript: select_City(this.options[this.selectedIndex].text);" runat="server" Height="23px" Width="181px">
         <asp:ListItem>-City-</asp:ListItem>
         <asp:ListItem>Islamabad</asp:ListItem>
         <asp:ListItem>Lahore</asp:ListItem>
         <asp:ListItem>Karachi</asp:ListItem>
         <asp:ListItem>Peshawar</asp:ListItem>
         <asp:ListItem>Other</asp:ListItem>
         </asp:DropDownList></td>
         </tr>
        </table>
        <table id="Islamabad" class="auto-style2" style="margin-left:280px;display:none">
              <tr >
     <td class="auto-style18" ><asp:Label ID="Label6" runat="server" Text="Sector"></asp:Label></td>
     <td class="auto-style18"><asp:DropDownList ID="DropDownList5" runat="server" Width="180px" Height="24px">
         <asp:ListItem>-Sector-</asp:ListItem>
         <asp:ListItem>G-6/1</asp:ListItem>
         <asp:ListItem>G-6/2</asp:ListItem>
         <asp:ListItem>G-6/3</asp:ListItem>
         <asp:ListItem>G-6/4</asp:ListItem>
         <asp:ListItem>G-7/1</asp:ListItem>
         <asp:ListItem>G-7/2</asp:ListItem>
         <asp:ListItem>G-7/3</asp:ListItem>
         <asp:ListItem>G-7/4</asp:ListItem>
         <asp:ListItem>G-8/1</asp:ListItem>
         <asp:ListItem>G-8/2</asp:ListItem>
         <asp:ListItem>G-8/3</asp:ListItem>
         <asp:ListItem>G-8/4</asp:ListItem>
         <asp:ListItem>F-10/1</asp:ListItem>
         <asp:ListItem>F-10/2</asp:ListItem>
         <asp:ListItem>F-10/3</asp:ListItem>
         <asp:ListItem>F-10/4</asp:ListItem>
         <asp:ListItem>G-11/1</asp:ListItem>
         <asp:ListItem>G-11/2</asp:ListItem>
         <asp:ListItem>G-11/3</asp:ListItem>
         <asp:ListItem>G-11/4</asp:ListItem>
         <asp:ListItem>H-11/1</asp:ListItem>
         <asp:ListItem>H-8/2</asp:ListItem>
         <asp:ListItem>H-8/2</asp:ListItem>
         </asp:DropDownList></td>
         </tr>
              <tr >
     <td class="auto-style18" ><asp:Label ID="Label7" runat="server" Text="Street#"></asp:Label></td>
     <td class="auto-style18"><asp:TextBox ID="TextBox7" runat="server" Width="175px"></asp:TextBox></td>
         </tr>
            <tr >
     <td class="auto-style18" ><asp:Label ID="Label8" runat="server" Text="House#" ></asp:Label></td>
     <td><asp:TextBox ID="TextBox5" runat="server" Width="175px"></asp:TextBox></td>
         </tr>
        </table>
      <table id="city_other" class="auto-style2" style="margin-left:280px;display:none; height: 30px;">
            <tr >
     <td class="auto-style18" ><asp:Label ID="Label12" runat="server" Text="Address"></asp:Label></td>
     <td>
         <asp:TextBox ID="TextBox8" runat="server" Width="175px"></asp:TextBox></td>
         </tr>
        </table>
       <p style="margin-left:520px"> <asp:Button ID="Button1" CssClass="button" runat="server" Text="Donate" OnClick="Button1_Click" /> </p> <br />
    </div>        
    </form>
     <footer style="background-image:url(images/back.jpg); height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="Default.aspx">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx">Donate</a></li>		
				</ul>
			</nav>
			<p class="copy"><span>Fiasco Fix</span> &nbsp;&copy; &nbsp;2013 &nbsp; &nbsp;<a href="#">Privacy Policy</a></p>
		</div>
	</footer>
</body>
</html>
