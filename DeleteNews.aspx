<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DeleteNews.aspx.cs" Inherits="site_DeleteNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Update News</title>
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

    <script type="text/javascript">
        function update_disaster(selectedType) {

            document.getElementById("abc").style.display = "block";

        }
    </script>

</head>
<body>
     <!-- header -->
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
                    <li><a href="#">News update</a></li>
					<li><a href="upd.aspx">Disaster update</a></li>
					<li><a href="Default2.aspx">Sign in</a></li>
                     <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
            </div>
               </header>
    <div style="background-image:url(images/body.jpg); color:Black;height:450px "><form id="form1" runat="server">
    <div style="margin-left:225px;">
    <font color="black";><b>
      
    
        </br>
        <br /><br /><br /><br />
        <h2>DELETE NEWS</h2>       <br /><br /> 
        SELECT NEWS &nbsp;&nbsp;  <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="HeadLine" DataValueField="HeadLine"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FiascoFixConnectionString2 %>" SelectCommand="SELECT [HeadLine] FROM [News]"></asp:SqlDataSource>
        <br /><br />
       </b></font><br /><br />
                       <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="DELETE"></asp:Button>
    
    <br/><br/>
 </div></form>
    </div>
 
    <footer style="background-image:url(images/back.jpg); height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="Default.aspx">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
                    <li><a href="#">News update</a></li>
					<li><a href="upd.aspx">Disaster update</a></li>
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

