<%-- 
    Document   : header
    Created on : Jan 7, 2012, 1:30:01 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>header</title>
    </head>
    <body>
 

       <script type="text/javascript" src="scripts/jquery.cycle.min.js"></script>
<script type="text/javascript" src="scripts/jquery.cycle.setup.js"></script>
<script type="text/javascript" src="scripts/piecemaker/swfobject/swfobject.js"></script>
<script type="text/javascript" src="scripts/jqueryfor.js">

</script>

 <link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script type="text/javascript" src="jquery.easing.1.3.js"></script>
        <script type="text/javascript" src="scripts/jqueryslide.js">
          
        </script>
       <style type="text/css">
		ul{
			list-style:none;
			} 
			.box {

  

   

    display: block;

   
    -moz-box-shadow: 0px 0px 70px #000000;

    -webkit-box-shadow: 0px 0px 70px #000000;

    box-shadow: 0px 0px 70px #000000;

}
a
{
	text-decoration:none;
	color:#000;
}
		</style>
        
        <script>
			// Get the wrapper div, and the contained &lt;a&gt; element
			var feedback_btn = document.getElementById("feedback");
			var feedback_link = feedback_btn.getElementsByTagName("a")[0];

			// Check for browsers that don't support CSS3 transforms or IE's filters
			if(feedback_btn.style.Transform == undefined && feedback_btn.style.WebkitTransform == undefined && feedback_btn.style.MozTransform == undefined && feedback_btn.style.OTransform == undefined && feedback_btn.filters == undefined) {

				// Swap width with height, change padding
				feedback_link.style.width="15px";
				feedback_link.style.height="70px";
				feedback_link.style.padding="16px 8px";
				
				// Insert vertical SVG text
				feedback_link.innerHTML = "<object type='image/svg+xml' data='feedback_vertical.svg'></object>";
			}

			// OnClick event here
			feedback_link.onclick = function(e) { e.preventDefault(); alert("Clicked feedback link"); }
		</script>
        
    <link rel="stylesheet" href="css/styles.css"/>

<link rel="stylesheet" href="style.css"/>

<script type="text/javascript" src="jquery.aw-check.js"></script>
<script type="text/javascript">
jQuery( document ).ready(function() {
	
	// Init form
	aw_check_init( '#form' );
});
</script>
    </body>
</html>
