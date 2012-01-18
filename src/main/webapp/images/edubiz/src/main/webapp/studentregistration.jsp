<%-- 
    Document   : studentregistration
    Created on : Jan 7, 2012, 3:35:20 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>studentyregsitrtion</title>
    </head>
    <body>
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
    </body>
</html>
