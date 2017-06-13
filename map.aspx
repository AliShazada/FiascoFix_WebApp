<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="ff_site_map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <style>
        #panel {
        position: absolute;
        top: 135px;
        left: 90%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
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
                    //document.getElementById('panel').style.display="block";
                    //document.getElementById('req').style.color="black";
                    //document.getElementById('req').innerHTML="<br/>&nbsp;&nbsp;&nbsp;&nbsp;Deaths: "+data.deaths+"<br/> &nbsp;&nbsp;&nbsp;&nbsp;Injured: "+data.injured+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Completely Damaged: "+data.Houses_damaged+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Partially Damaged: "+data.Houses_partial+"<br/><br/>";
                  });
            })(marker, data);

            (function (marker, data) {
                google.maps.event.addListener(marker, "closeclick", function (e) {
                    map.setZoom(6);
                    map.setCenter(marker.getPosition());
                    infoWindow.close(map, marker);
                    document.getElementById('panel').style.display="none";
                });
            })(marker, data);
        }
        }
       
      
    function close()
    {
        document.getElementById('panel').style.display="none";
    }

</script>
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
					<li><a href="Default2.aspx">Sign in</a></li>
                    <li><a href="Signup.aspx">Sign Up</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
            </header>
			<!-- faded slider begin -->
            <div style="height:500px">
			<div id="panel" style="display:none">    
                <asp:Button ID="Button1" runat="server" Text="x" style="float:right" onClientClick="close()" />
                    <div id="req"></div>    
    </div>
				 <div id="dvMap" style="height:100%;margin:0px;padding:0px">
                 </div> 
             </div>       
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
	
        </form>
</body>
</html>
