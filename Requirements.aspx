<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Requirements.aspx.cs" Inherits="site_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Untitled Page</title>
          <script type="text/javascript" language="JavaScript" src="FusionCharts/FusionCharts.js"></script>
      <script type="text/javascript" language="JavaScript">

          function myJS(myVar) {
              window.alert(myVar);
          }

      </script>
<script language="JavaScript" type="text/JavaScript" src="login.js"></script>
    <script>
        function Login(form) {
            username = new Array("u1", "u2", "u3", "u4", "u5", "u6", "u7", "u8", "u9", "admin");
            password = new Array("p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9", "123");
            page = "home.aspx";
            page1 = "Admin_home.aspx";

            if (form.username.value == username[0] && form.password.value == password[0] || form.username.value == username[1] && form.password.value == password[1] || form.username.value == username[2] && form.password.value == password[2] || form.username.value == username[3] && form.password.value == password[3] || form.username.value == username[4] && form.password.value == password[4] || form.username.value == username[5] && form.password.value == password[5] || form.username.value == username[6] && form.password.value == password[6] || form.username.value == username[7] && form.password.value == password[7] || form.username.value == username[8] && form.password.value == password[8]) {
                self.location.href = page;
            }
            else if (form.username.value == username[9] && form.password.value == password[9]) {
                self.location.href = page1;
            }
            else {
                alert("Either the username or password you entered is incorrect.\nPlease try again.");
                form.username.focus();
            }
            return true;
        }
    </script>
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
</head>
<body bgcolor="#eeeeee">
    <!-- header -->
	<header>
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="Default.aspx" >Home</a></li>
                    <li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
                    <li><a href="Requirements.aspx" class="current">Requirements</a></li>
                    <li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
                   <%-- <li><a href="reportform.aspx" class="button">Donate</a></li>--%>
				</ul>
			</nav>
            </div>
<form id="form1" runat="server">
     <div style="margin-top:105px;margin-left:130px">
        
             <asp:DropDownList ID="DropDownList1" style="margin-left:450px" runat="server" Height="26px" Width="195px" BackColor="#FF3300" ForeColor="White">
                    <asp:ListItem>Flood Requirements</asp:ListItem>
                    <asp:ListItem>Earthquake Requirements</asp:ListItem>
                    <asp:ListItem>Flood Requirements</asp:ListItem>
                    <asp:ListItem>Peshawar Blast Requirements</asp:ListItem>
                </asp:DropDownList>
         <asp:Button ID="Button1" runat="server" Text="Select" class="button" style="margin-top:75px;margin-left:-140px" OnClick="Button1_Click1" />


     </div>
    <div style="margin-top:35px;margin-left:230px">

                                
     <table width="800px" border="0" cellspacing="0" cellpadding="3" align="center">


          <tr> 
            <%--<td valign="top" class="text" align="center" style="background-color:black">
            <asp:Literal ID="FCLiteral1" runat="server"></asp:Literal>
	        </td>--%>
            <td valign="top" class="text" align="center">

            <asp:Literal ID="FCLiteral2" runat="server"></asp:Literal>
	        </td>
	        
          </tr>
         <%-- <tr> 
            <td valign="top" class="text" align="center">
            <asp:Literal ID="FCLiteral3" runat="server"></asp:Literal>
	        </td>
            <td valign="top" class="text" align="center">
            <asp:Literal ID="FCLiteral4" runat="server"></asp:Literal>
	        </td>
	        
          </tr>  --%>        
        </table>
        </div>
</form>
        </header>
    <footer style="background-image:url(images/back.jpg);height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="Default.aspx">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<%--<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx">Donate</a></li>	--%>	
				</ul>
			</nav>
			<p class="copy"><span>Fiasco Fix</span> &nbsp;&copy; &nbsp;2013 &nbsp; &nbsp;<a href="#">Privacy Policy</a></p>
		</div>
	</footer>
</body>
</html>



