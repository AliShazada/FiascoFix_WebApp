
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAxEAPZujPuK0uJ4dxzyIH1yszgMw5xyIU&sensor=false">
    </script>
    <script type="text/javascript" src="https://www.google.com/jsapi"> </script>


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

<body>
    
    <form id="form1" runat="server">
     <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    var markers = [
    <asp:Repeater ID="rptMarkers" runat="server">
    <ItemTemplate>
                {
                    "title": '<%# Eval("DisasterName") %>',
                    "lat": '<%# Eval("Disaster_Lat") %>',
                    "lng": '<%# Eval("Disaster_Long") %>',
                    "description": '<%# Eval("DisasterDescription") %>',
                }
</ItemTemplate>
<SeparatorTemplate>
    ,
</SeparatorTemplate>
</asp:Repeater>
    ];

 
  
</script>
<script type="text/javascript">
    window.onload = function () {
        var mapOptions = {
            center: new google.maps.LatLng(31.983618,71.213379),
            zoom: 5,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var infoWindow = new google.maps.InfoWindow();
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        for (i = 0; i < markers.length; i++) {
            var data = markers[i]
            var myLatlng = new google.maps.LatLng(data.lat, data.lng);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                title: data.title,
              
            });
            (function (marker, data) {
                google.maps.event.addListener(marker, "click", function (e) {
                    map.setZoom(8);
                    map.setCenter(marker.getPosition());
                    infoWindow.setContent('<div style="color:black">'+data.description+'</div>');
                    infoWindow.open(map, marker);
                    //document.getElementById('req').style.display="block";
                    //document.getElementById('req').style.color="black";
                    //document.getElementById('req').innerHTML="<br/>&nbsp;&nbsp;&nbsp;&nbsp;Deaths: "+data.deaths+"<br/> &nbsp;&nbsp;&nbsp;&nbsp;Injured: "+data.injured+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Completely Damaged: "+data.Houses_damaged+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Partially Damaged: "+data.Houses_partial+"<br/><br/>";
                  });
            })(marker, data);
        }
       
       
    }
</script>
	<!-- header -->
	<header style="height:705px">
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="Default.aspx" class="current">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
                    <li><a href="Requirements.aspx">Requirements</a></li>
					<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
			<!-- faded slider begin -->
            
			<div id="faded">
				 <div id="dvMap" style="width:580px;height:400px; background-color:black; margin-top:75px"></div> 
                <ul class="pagination" style="margin-top:75px;margin-left:100px;margin-top:70px"><div style="width:280px;height:340px; overflow:hidden;"><center><font color="white" size="30"><b>RECENT NEWS</b></font></center><br/>
                   <article class="last">
						<ul class="img-list clearfix">
							<li ><a href="report.pdf"><img src="images/Copy1.jpg" alt=""><font color="black">Balochistan Earthquake<br/> Report</font></a></li><br />
                            <li ><a href="www.google.com"><img src="images/Copy2.jpg" alt=""><font color="black">Swat Flood Report</font></a></li><br />
                            <li ><a href="www.google.com"><img src="images/Copy4.jpg" alt=""><font color="black">Islamabad Earthquake</font></a></li><br />
                            </ul></article>
                 </ul><br/>
                <%--<a href="map.aspx" style="color:blueviolet">Enlarge</a>--%>
                <div id="req" style="width:250px;background-color:wheat; display:none"></div> 
			</div>
			<!-- faded slider end -->

		</div>
        
	</header>
	
	<footer style="background-image:url(images/back.jpg); height:8px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="Default.aspx">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="#">Donate</a></li>		
				</ul>
			</nav>
			<p class="copy"><span>Fiasco Fix</span> &nbsp;&copy; &nbsp;2013 &nbsp; &nbsp;<a href="#">Privacy Policy</a></p>
		</div>
	</footer>
	
        </form>
</body>
</html>

