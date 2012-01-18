<%-- 
    Document   : contactus
    Created on : Jan 7, 2012, 3:40:10 PM
    Author     : Administrator
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!--import hedders -->
        <s:include value="headercontactus.jsp" ></s:include>
    
</head>

<body >
<div align="center">

<div  style="width:1100px; height:650px; background-color:#000;" class="box" >
<div style="width:1100px; height:150px; background-color:#000;">
 <s:include value="menucontactus.jsp"></s:include>
    
</div>

<div style="width:1100px; height:400px; background-color:#FFF;" >
<div style="width:1100px; height:300px;font-size:16px; font-family:CRYSTALCORE; color:#333;">
<p style="font-size:30px;"><strong>Where Are We</strong></p>
<div style=" width:300px; float:left; text-align:justify; padding-left:45px; padding-top:24px;">


Head Quaters Address
<br />
<br />
EduBiz 
<br />
13d,Bharathiyar Street Extn,
<br />
Vedhachalam Nagar,
<br />
Kanchipuram-631501.
<br />
<br />
<a id="various1" href="#inline1" title="Lorem ipsum dolor sit amet">Talk TO US</a>
		

	<div style="display: none;" >
		<div id="inline1" style="width:700px;height:450px;overflow:auto; padding-left:35px; background:url(images/090100084.jpg) " align="center" >
       <p style="font-size:30px; font-family:'square kids'; color:#020202;"><strong>TALK TO US</strong></p>
       <s:include value="talktous.jsp"></s:include>
		</div>
	</div>
		</div>



<div style="float:left; width:250px; text-align:justify; padding-top:10px;">
<br />
Registered Address
<br />
<br />
EduBiz Technologies
<br />
7,Anna Street,
<br />
Vedhachalam Nagar,
<br />
Kanchipuram-631501.
</div>
	
<div style="width:500px; background-color:#fff; height:250px; float:left; border:#000;">
<div style="width: 500px;  border:thick; border-left:#000;"><iframe width="500" height="250" src="http://regiohelden.de/google-maps/map_en.php?width=500&amp;height=300&amp;hl=en&amp;q=13d%2Cbharathiyar%20street%2Ckanchipuram+(Edubiz)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=A&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></span></iframe></div>
</div>

</div>
 <s:include value="footer.jsp"></s:include>
</div>
</div>
</div>
</div>
</body>
</html>
