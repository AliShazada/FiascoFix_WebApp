<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html lang="en">
<head>
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

    var recent_news = [
   <asp:Repeater ID="n_new" runat="server">
   <ItemTemplate>
               {
                   "ID": '<%# Eval("News_ID") %>',
                    "News": '<%# Eval("HeadLine") %>',
                    
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
                    //document.getElementById('req1').style.display="block";
                    //document.getElementById('req').style.color="black";
                    //document.getElementById('req').innerHTML="<br/>&nbsp;&nbsp;&nbsp;&nbsp;Deaths: "+data.deaths+"<br/> &nbsp;&nbsp;&nbsp;&nbsp;Injured: "+data.injured+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Completely Damaged: "+data.Houses_damaged+"<br/>&nbsp;&nbsp;&nbsp;&nbsp;Houses Partially Damaged: "+data.Houses_partial+"<br/><br/>";
                   

                });
            })(marker, data);
        }
   
    }
    function close()
    {
        document.getElementById('req1').style.display="none";
    }
</script>
	<!-- header -->
	<header style="height:750px">
		<div class="container_16">
			<div class="logo">
				<h1><a href="index.html"><strong>Fiasco</strong> Fix</a></h1>
			</div>
			<nav>
				<ul>
					<li><a href="home.aspx" class="current">Home</a></li>
					<li><a href="#">How it works</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="Signout.aspx">SignOut</a></li>
                    <li><a href="reportform.aspx" class="button">Donate</a></li>
				</ul>
			</nav>
			<!-- faded slider begin -->
            
			<div id="faded">
				 <div id="dvMap" style="width:580px;height:400px; background-color:black; margin-top:75px">
    </div> 
                <ul class="pagination" style="margin-top:75px;margin-left:100px;"><div style="width:280px;height:340px; overflow:hidden; background-color:#f4d499"><h3 style="font-size:large"><br/><center><font color="red"><b><i>RECENT NEWS</i></b></font></center></h3><br/>
                 
                      <%--<article class="last">
						<ul class="img-list clearfix">
							<li ><a href="report.pdf"><img src="images/Copy1.jpg" alt=""><font color="black">Balochistan Earthquake<br/> Report</font></a></li><br />
                            <li ><a href="www.google.com"><img src="images/Copy2.jpg" alt=""><font color="black">Swat Flood Report</font></a></li><br />
                            <li ><a href="www.google.com"><img src="images/Copy4.jpg" alt=""><font color="black">Islamabad Earthquake</font></a></li><br />
                            </ul></article>--%>
                    <marquee direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount',0,0);" onmouseout="this.setAttribute('scrollamount',2,0);">
                        <a href="#"><font color="black"><p id="P1" style="margin-left:10px; margin-right:10px;"> The EarthquakeIsland surfaced as a result of an earthquake in Balochistan is now vanishing </p></font></a><br/ ><a href="#"> <font color="black"><p id="new" style="margin-left:10px; margin-right:10px;"> Report Of Balochistan Earthquake </p></font></marquee></a>
                        
                 </ul><br/>
                <%--<a href="map.aspx" style="color:blueviolet">Enlarge</a>--%>
                <div id="req1" style="width:250px;background-color:wheat; display:none">
                    <asp:Button runat="server" Text="x" style="float:right" onClientClick="close()" />
                    <div id="req"></div>
                </div> 
			</div>
			<!-- faded slider end -->

		</div>
        
	</header>
	<!-- content -->
        <%--<div style="background-image:url(images/body.jpg)">
            <br/><br/><br/>
            <div id="dvMap" style="width:580px;height:400px; background-color:black; margin-left:250px;float:left;"> </div>
            <br/><br/>
        </div>--%>
	<!-- footer -->
	<footer style="background-image:url(images/back.jpg); height:10px">
		<div class="container_16">
			<nav>
				<ul>
					<li><a href="home.aspx">Home</a></li>
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
	
        </form>
</body>
</html>

