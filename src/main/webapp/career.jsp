<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!--import hedders -->
        <s:head theme="jquery"/>
        <s:include value="headercontactus.jsp" ></s:include>
 
</head>

<body>
    <s:include value="feedback.jsp"></s:include>
  <div align="center">

<div  style="width:1100px; height:650px; background-color:#000;" class="box" >
<div style="width:1100px; height:150px; background-color:#000;">
 <s:include value="menucontactus.jsp"></s:include>
    
</div>

<div style="width:1100px; height:350px; font-family:Verdana, Geneva, sans-serif; font-size: 18px; color:#000;text-align:justify; background-image:url(images/blue_water_splash_world_map_shutterstock.jpg);"><p style="font-size:30px; padding-left:420px; padding-top:30px;"><strong>Join With Us</strong></p>
<p style=" padding-left:30px; padding-right:30px;">
When you are working with EduBiz you will work along with a great team. You can work in your comfortable time in your comfortable environment. We offer which nobody could offer i.e. you could become a partner by showing your dedication and hard work. Eventually could do a great service to our country by developing the academic standards which could intern change the future</p>
    </ br>   
    <br>
        
    </br>
    <br></br>
<a  href="studentreg.jsp"  style="padding-left:450px;"><img src="images/student Reg.png" height="35px" width="120px" /></a>
  <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
</div>
       <s:include value="footer.jsp"></s:include>
</div>
</div>

</body>
</html>
