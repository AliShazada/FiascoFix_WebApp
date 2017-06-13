<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="ff_site_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
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

    <script>
    function Address(Selectedtype) {
            var address = Selectedtype;
            if (address == "Other") {
                document.getElementById('city').style.display = "block";
            }
            else {
                document.getElementById('city').style.display = "none";
                }
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
					<li><a href="Default.aspx" >Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>					
                    <li><a href="Signup.aspx" class="current" >Sign Up</a></li>
                    <li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
            </div>
               </header>
    <div style="background-image:url(images/body.jpg); color:Black; "><form id="form1" runat="server">
    <div style="margin-left:225px;">
    <font color="black"; size="4"><b>
       <br/><br/> <p>Feilds with asterik(<font color="red">*</font>) are required to be filled out in order to process this form</p>
    <pre>
        </br>
First Name              <font color="red">*</font>  <asp:TextBox ID="TextBox1" placeholder="First Name" style="border-color:black" runat="server"></asp:TextBox>        Last Name    <font color="red">*</font>  <asp:TextBox ID="TextBox2" placeholder="Last Name" style="border-color:black" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1"  ErrorMessage="First name is a required field."  ForeColor="Red" BorderColor="Red"></asp:RequiredFieldValidator>                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox2"  ErrorMessage="Last name is a required field."  ForeColor="Red"></asp:RequiredFieldValidator><br />
Gender                  <font color="red">*</font>  <asp:DropDownList ID="DropDownList1" style="border-color:black" runat="server"><asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem></asp:DropDownList>            &nbsp;&nbsp;&nbsp;     Civil Status&nbsp;&nbsp;&nbsp;  <asp:DropDownList ID="DropDownList2" style="border-color:black" runat="server"><asp:ListItem>Married</asp:ListItem><asp:ListItem>UnMarried</asp:ListItem></asp:DropDownList></br>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"  ControlToValidate="DropDownList1"  InitialValue="Please select" ErrorMessage="Gender is a required field."  ForeColor="Red"></asp:RequiredFieldValidator>
</pre>
<pre>
Date of birthday           <asp:DropDownList ID="DropDownList4" runat="server"><asp:ListItem>Day</asp:ListItem><asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem><asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem><asp:ListItem>5</asp:ListItem><asp:ListItem>6</asp:ListItem><asp:ListItem>7</asp:ListItem><asp:ListItem>8</asp:ListItem><asp:ListItem>9</asp:ListItem><asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem><asp:ListItem>13</asp:ListItem><asp:ListItem>14</asp:ListItem><asp:ListItem>15</asp:ListItem><asp:ListItem>16</asp:ListItem><asp:ListItem>17</asp:ListItem><asp:ListItem>18</asp:ListItem><asp:ListItem>19</asp:ListItem><asp:ListItem>20</asp:ListItem><asp:ListItem>21</asp:ListItem><asp:ListItem>22</asp:ListItem><asp:ListItem>23</asp:ListItem><asp:ListItem>24</asp:ListItem><asp:ListItem>25</asp:ListItem><asp:ListItem>26</asp:ListItem><asp:ListItem>27</asp:ListItem><asp:ListItem>28</asp:ListItem><asp:ListItem>29</asp:ListItem><asp:ListItem>30</asp:ListItem><asp:ListItem>31</asp:ListItem></asp:DropDownList>  <asp:DropDownList ID="DropDownList5" runat="server"><asp:ListItem>Month</asp:ListItem><asp:ListItem>January</asp:ListItem><asp:ListItem>Feburary</asp:ListItem><asp:ListItem>March</asp:ListItem><asp:ListItem>April</asp:ListItem><asp:ListItem>May</asp:ListItem><asp:ListItem>June</asp:ListItem><asp:ListItem>July</asp:ListItem><asp:ListItem>August</asp:ListItem><asp:ListItem>September</asp:ListItem><asp:ListItem>October</asp:ListItem><asp:ListItem>November</asp:ListItem><asp:ListItem>December</asp:ListItem></asp:DropDownList>  <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>  </br> 
</br>
House_no               <font color="red">*</font>   <asp:TextBox ID="TextBox3" placeholder="House#" style="border-color:black" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox3"  ErrorMessage="House# is a required field."  ForeColor="Red"></asp:RequiredFieldValidator><asp:HiddenField ID="lat" runat="server"></asp:HiddenField><asp:HiddenField ID="lng" runat="server"></asp:HiddenField></br>
Street                 <font color="red">*</font>   <asp:TextBox ID="TextBox4" placeholder="Street#" style="border-color:black" runat="server"></asp:TextBox> 
                           <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"  ControlToValidate="TextBox4"  ErrorMessage="Street# is a required field."  ForeColor="Red"></asp:RequiredFieldValidator></br>
City                   <font color="red">*</font>   <asp:DropDownList ID="DropDownList3" onchange="javascript: Address(this.options[this.selectedIndex].text);" runat="server"><asp:ListItem>Islamabad</asp:ListItem><asp:ListItem>Lahore</asp:ListItem><asp:ListItem>Karachi</asp:ListItem><asp:ListItem>Peshawar</asp:ListItem><asp:ListItem>Other</asp:ListItem></asp:DropDownList>  <div id="city" style="display:none;width:150px"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></div>
                           <%--<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"  ControlToValidate="TextBox5"  ErrorMessage="City is a required field."  ForeColor="Red"></asp:RequiredFieldValidator></br>--%>
Country                <font color="red">* </font>  <asp:TextBox ID="TextBox6" placeholder="Country" style="border-color:black" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"  ControlToValidate="TextBox6"  ErrorMessage="Country name is a required field."  ForeColor="Red"></asp:RequiredFieldValidator></br>
Email Id               <font color="red">* </font>&nbsp;<asp:TextBox ID="TextBox7" placeholder="email" style="border-color:black" runat="server"></asp:TextBox>         Contact Number  <font color="red">*</font> <asp:TextBox ID="TextBox8" placeholder="First Name" style="border-color:black" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"  ControlToValidate="TextBox7"  ErrorMessage="Email is a required field."  ForeColor="Red"></asp:RequiredFieldValidator>                       
UserName               <font color="red">*</font>  <asp:TextBox ID="TextBox9" placeholder="UserName" style="border-color:black" runat="server"></asp:TextBox>  
                           <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"  ControlToValidate="TextBox9"  ErrorMessage="UserName is Required"  ForeColor="Red"></asp:RequiredFieldValidator>                        
Password               <font color="red">*</font>  <asp:TextBox ID="TextBox11" placeholder="Password" TextMode="Password" style="border-color:black" runat="server"></asp:TextBox> 
                           <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"  ControlToValidate="TextBox11"  ErrorMessage="Password is required."  ForeColor="Red"></asp:RequiredFieldValidator>                      
Re-Password               <font color="red">*</font>  <asp:TextBox ID="TextBox13" placeholder="Confirm Password" TextMode="Password" style="border-color:black" runat="server"></asp:TextBox> 
                          <asp:CompareValidator id="Compare1" ControlToValidate="TextBox13" ControlToCompare="TextBox11" Operator="Equal" Type="String" Text="Failed Validation" 
    runat="server"/>                        <asp:RequiredFieldValidator id="RequiredFieldValidator15" runat="server"  ControlToValidate="TextBox8"  ForeColor="Red"></asp:RequiredFieldValidator>

</pre>

       <%-- <asp:Button ID="Button1" runat="server" CssClass="button" Text="SignUp" OnClick="Button1_Click"></asp:Button>--%>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" Text="SignUp" class="button" OnClick="Button1_Click" Width="119px" Height="38px"  />
    </b></font><br/><br/>
 
    </div>
    </form>
 </div>
    <footer style="background-image:url(images/back.jpg); height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="#">Home</a></li>
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
