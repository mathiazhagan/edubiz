<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!--import hedders -->
        <s:include value="headercontactus.jsp" ></s:include>
    
</head>

<body >
<div align="center">

<div  style="width:1100px; height:600px;" class="box">
<div style="width:1100px; height:150px; background-color:#000;">
    <s:include value="menucontactus.jsp"></s:include>
</div>

<div style="width:1100px; height:300px; font-family:CRYSTALCORE; color:#000;text-align:justify; background-image:url(images/blue_water_splash_world_map_shutterstock.jpg);"><p style="font-size:30px; padding-left:390px; padding-top:30px;"><strong>Join With Us</strong></p>
<p style=" padding-left:30px; padding-right:30px;">
When you are working with EduBiz you will work along with a great team. You can work in your comfortable time in your comfortable environment. We offer which nobody could offer i.e. you could become a partner by showing your dedication and hard work. Eventually could do a great service to our country by developing the academic standards which could intern change the future</p>
<a id="various1" href="#inline1" title="Lorem ipsum dolor sit amet" style="padding-left:350px;"><img src="images/018_wave.gif" height="75px" width="300px" /></a>
<div style="display: none;" >
		<div id="inline1" style="width:700px;height:450px;overflow:auto; padding-left:35px; background:url(images/090100084.jpg) " align="center" >
       <p style="font-size:30px; font-family:'square kids'; color:#020202;"><strong>Student Registration</strong></p>
        <s:actionerror/>
                    <s:form cssClass="form" action="register">
                        <s:textfield cssClass="input-box" name="mail" label="Email Id" />
                        <s:textfield cssClass="input-box" name="firstName" label="First Name" />
                        <s:textfield cssClass="input-box" name="lastName" label="Last Name"  />
                        <s:select cssClass="input-box" name="collegeName" label="College Name" headerKey="Please select" headerValue="Please select" list="{'PEC','AMACE','Other'}" />
                        <s:select cssClass="input-box" label="Year" name="year" headerKey="Please select" headerValue="Please select" list="{'II','III','IV'}" />
                        <s:select cssClass="input-box" label="Department" name="dept" headerKey="Please select" headerValue="Please select" list="{'CSE','IT','MBA'}" />
                        <s:select cssClass="input-box" label="Gender" name="gender" headerKey="Please select" headerValue="Please select" list="{'MALE','FEMALE'}" />
                        <s:textfield cssClass="input-box" name="mobile" label="Mobile No" />
                        <s:textarea cssClass="input-box" name="address" label="Address" rows="3" cols="16.7"/>
                        <s:textfield cssClass="input-box" name="city" label="City" />
                        <s:submit cssStyle="background-color:#014d87; font-size:18px; color:#FFF; border:0px; width:90px; height:24px;"  value="Register"/>
                    </s:form>
		</div>
	</div>
</div>
       <s:include value="footer.jsp"></s:include>
</div>
</div>

</body>
</html>
