<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reportform.aspx.cs" Inherits="ff_site_reportform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate Form</title>
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
    <script type="text/javascript" language="javascript">
        
        function select_donation(Selectedtype) {
            var donation = Selectedtype;
            if (donation == "Other")
            {
                document.getElementById('other').style.display = "block";
                document.getElementById('quantity').style.display = "none";
                document.getElementById('amount').style.display = "none";
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

        function Address(Selectedtype) {
            var address = Selectedtype;
            if (address == "Islamabad") {
                document.getElementById('address').style.display = "block";
                document.getElementById('add2').style.display = "none";
            }
            else if (address == "-City-")
            {
                document.getElementById('address').style.display = "none";
                document.getElementById('add2').style.display = "none";
            }
            else {
                document.getElementById('add2').style.display = "block";
                document.getElementById('address').style.display = "none";
                }
        }
        function postback() {
            document.getElementById('quantity').style.display = "none";
            document.getElementById('amount').style.display = "none";
            document.getElementById('other').style.display = "none";
        }
        </script>
</head>
<body onload="postback()">
      <!-- header -->
	<header style="height:100px">
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="home.aspx">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="Signout.aspx">Sign Out</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
            </div>
         </header>
    <div style="background-image:url(images/body.jpg)">
    <form id="form1" runat="server">
    <div style="margin-left:300px;">
        <br/><br/>
    <font color="black"; size="4"><b>
        <p>Feilds with asterik(<font color="red">*</font>) are required to be filled out in order to process this form</p>
        </br>
<%--First Name              <font color="red">*</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="TextBox1" placeholder="First Name" style="border-color:black" runat="server"></asp:TextBox>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name      <asp:TextBox ID="TextBox2" placeholder="Last Name" style="border-color:black" runat="server"></asp:TextBox>--%>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="name" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;   <asp:Label ID="contact" runat="server" Text=""></asp:Label>
   
        <br />
   
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="email" runat="server" Text=""></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   <asp:Label ID="add" runat="server" Text=""></asp:Label>
   
        <br />

 City                   <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * </font><asp:DropDownList ID="DropDownList1" style="border-color:black" onchange="javascript: Address(this.options[this.selectedIndex].text);" runat="server" Height="26px" Width="147px"><asp:ListItem>-City-</asp:ListItem><asp:ListItem>Islamabad</asp:ListItem><asp:ListItem>Rawalpindi</asp:ListItem><asp:ListItem>Lahore</asp:ListItem><asp:ListItem>Karachi</asp:ListItem><asp:ListItem>Peshawar</asp:ListItem></asp:DropDownList>  <asp:HiddenField ID="lat" runat="server"></asp:HiddenField><asp:HiddenField ID="lng" runat="server"></asp:HiddenField>
&nbsp;  

        <br />
<div id="address" style="display:none">
House_no               <font color="red">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>  &nbsp;<asp:TextBox ID="TextBox3" placeholder="House no" style="border-color:black" runat="server"></asp:TextBox>&nbsp;
   <br />
Street                 <font color="red">*</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="TextBox4" placeholder="Street" style="border-color:black" runat="server"></asp:TextBox>&nbsp;
  <br />
Sector                <font color="red">*</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="TextBox6" placeholder="Country" style="border-color:black" runat="server"></asp:TextBox>&nbsp;<br />
Country                <font color="red">*</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="TextBox13" placeholder="Country" style="border-color:black" runat="server"></asp:TextBox>&nbsp;
</div><br />
<div id="add2" style="display:none">
 Address&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" placeholder="Full Adress" style="border-color:black" runat="server"></asp:TextBox>
&nbsp;</div><br />
Email Id               <font color="red">*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>&nbsp;&nbsp; <asp:TextBox ID="TextBox7" placeholder="e.g abc@hotmail.com" style="border-color:black" runat="server"></asp:TextBox>     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact Number  <font color="red">*</font> <asp:TextBox ID="TextBox8" placeholder="Contact no" style="border-color:black" runat="server"></asp:TextBox></br>
      <br /><br />
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
Disaster             <font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *&nbsp;&nbsp; </font><asp:DropDownList ID="DropDownList2" style="border-color:black"  runat="server" Height="28px" Width="166px"></asp:DropDownList>  
       <br />
        <br />
Donation Location&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList3" style="border-color:black" runat="server" Height="31px" Width="168px"><asp:ListItem>-Place To Donate-</asp:ListItem><asp:ListItem>Awaran</asp:ListItem><asp:ListItem>Tirtej</asp:ListItem><asp:ListItem>Gashkore</asp:ListItem><asp:ListItem>Gajjar</asp:ListItem><asp:ListItem>Nok Jo</asp:ListItem><asp:ListItem>Parwar</asp:ListItem><asp:ListItem>Dandar</asp:ListItem><asp:ListItem>Mashkai</asp:ListItem><asp:ListItem>Hushab</asp:ListItem><asp:ListItem>Mangoli </asp:ListItem><asp:ListItem>Mangoli </asp:ListItem><asp:ListItem>Malar </asp:ListItem></asp:DropDownList>
        <br />
        <br/>   
Donation Category     <font color="red"> *</font>  <asp:DropDownList ID="DropDownList4" style="border-color:black" onchange="javascript: select_donation(this.options[this.selectedIndex].text);" runat="server" Height="27px"><asp:ListItem>-Type of Donation-</asp:ListItem><asp:ListItem>Cash</asp:ListItem><asp:ListItem>Tents</asp:ListItem><asp:ListItem>Blankets</asp:ListItem><asp:ListItem>Mosquito nets</asp:ListItem><asp:ListItem>Mineral water bottles</asp:ListItem><asp:ListItem>Food Items</asp:ListItem><asp:ListItem>Other</asp:ListItem></asp:DropDownList>   
                &nbsp;&nbsp;    
 <asp:Button ID="Button2" runat="server" Text="+"  OnClick="Button2_Click" ></asp:Button>
                <div id="amount" style="display:block"> Amount&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></div>
                <div id="quantity" style="display:block">Quantity&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></div>
                <div id="other" style="display:block">
                    Name&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>    Quantity &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </div>
</b></font>
</ContentTemplate></asp:UpdatePanel>
        <asp:Button ID="Button1" runat="server" Text="Donate" CssClass="button" OnClick="Button1_Click"></asp:Button>
    
        <br/><br/>
    </div>
    </form>
    </div>   
    <footer style="background-image:url(images/back.jpg); height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="home.aspx">Homee</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<%--<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx">Donate</a></li>--%>		
				</ul>
			</nav>
			<p class="copy"><span>Fiasco Fix</span> &nbsp;&copy; &nbsp;2013 &nbsp; &nbsp;<a href="#">Privacy Policy</a></p>
		</div>
	</footer>
</body>
</html>
