<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!--import hedders -->
        <s:include value="headercontactus.jsp" ></s:include>
 
</head>

<body>
    <s:include value="feedback.jsp"></s:include>
  <div align="center">

<div  style="width:1100px; height:100%px; background-color:#000;" class="box" >
<div style="width:1100px; height:150px; background-color:#000;">
 <s:include value="menucontactus.jsp"></s:include>
    
</div>

<div style="width:1100px;  font-family:Verdana, Geneva, sans-serif; font-size: 18px; color:#000;text-align:justify; background-color:#fff; "><p style="font-size:30px; padding-left:420px; padding-top:30px;"><strong>Student Registrations</strong></p>
<div>
      
        <s:actionerror/>
                    <s:form  action="register" cssClass="form">
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
                        <s:submit cssStyle=" background-image:url(images/submit.jpg); width: 100px; height: 30px;"  value=""/>
                    </s:form>
                    </div>
		
</div>
       <s:include value="footer.jsp"></s:include>
</div>
</div>

</body>
</html>
