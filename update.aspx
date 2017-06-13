<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="site_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add</title>
<script language="JavaScript" type="text/JavaScript" src="login.js"></script>
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

    <%--<script type="text/javascript">
        function add() {
            //document.getElementById('IR').innerHTML = '<br /> ITEM:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp; QUANTITY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox></asp:TextBox> ';

            var ni = document.getElementById('IR');
            var newdiv = document.createElement('div');
            newdiv.innerHTML = '<input type="text">';
            ni.appendChild(newdiv);
        }
    </script>--%>
</head>
<body bgcolor="#eeeeee">
    <!-- header -->
	<header style="height:120px">
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="Admin_home.aspx" class="current">Home</a></li>
                    <li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
                    <li><a href="update.aspx">Add Disaster</a></li>
                    <li><a href="#">Analysis</a></li>
                    <li><a href="Signout.aspx">Sign Out</a></li>
                     <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
           <%-- <div id="faded" style="margin-top:75px; margin-left:300px; color:Black; width:500px">
				<form action="Admin_home.aspx">
            <div style="">
            <b>Update Disaster Hit Area:<br/>
            <pre>
            Lat:         <input type="text" name="lat"><br/>
            Long:        <input type="text" name="long"><br/>
            Information: <input type="text" name="info"><br/></b>
            <input type="submit" value="submit">
            </pre>
            </div>
            </form>
			</div>
            
            </div>--%>
        </header>
                <form id="form1" runat="server">
        <div style="background-image:url(images/body.jpg); color:Black"><br /><br /><br />
        <div style="margin-left:400px">
            <div style="">
            <b>ADD DISASTER</b><br />
                <br/>
            Disaster Name:&nbsp;&nbsp;&nbsp;         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
            Disaster Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br/>
            Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:HiddenField ID="HiddenField1" runat="server" /><asp:HiddenField ID="HiddenField2" runat="server" />   <br/>
            Magnitude:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            Origin:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox><br />
            Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button3" runat="server" CssClass="button" Text="ADD" OnClick="Button3_Click" />
                </div>
            <div>
            <b> AFFECTEES</b>
                <br />
                <br />
            Total Area Affected:&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br/>
            Total Population:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br/>
            Injured:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br/>
            Deaths:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox><br/>
            Weather:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox><br/>

                <b> IMMEDIATE REQUIREMENTS</b>
                <br />
                <br />
            ITEM:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp; <br />
            QUANTITY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>&nbsp;<asp:Button ID="Button2" runat="server" Text="+" /> <br/>
            <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button1" runat="server" CssClass="button" Text="ADD" OnClick="Button1_Click1" /><br /><br />
            </div>
        </div>
 </form>
    <footer style="background-image:url(images/back.jpg);height:10px">
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



