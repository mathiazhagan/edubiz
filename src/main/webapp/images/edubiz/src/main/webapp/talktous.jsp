<%-- 
    Document   : talktous
    Created on : Jan 7, 2012, 3:45:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>talktous</title>
    </head>
    <body>
         <form name="talk" onSubmit="return validateOnSubmit()" action="dummy.html">
			<table height="350"  >

  <tr height="50px;">

    <td>

        <label for="fname" style="font:normal 21px 'square kids'; color:#020202; float:right;" >Name:</label></td>

    <td><input type="text" name="name" id="name" rows="2" cols="36" style="height:30px; width:200px;" size="50" onchange="validatename(this, 'inf_name');" />
    </td>

    <td id="inf_name" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>



 <tr height="50px;">

    <td><label for="email" style="font:normal 21px 'square kids'; color:#020202; float:right;">E-mail:</label></TD>

    <td><input  type="text" rows="2" cols="36" style="height:30px; width:200px;" size="50" name="email" id="email"          onchange="validateEmail(this, 'inf_email', true);" /></td>

    <td id="inf_email" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>

<!-- Note: the element to receive error messages must contain some data (for most, 

     if not all, browsers). A &nbsp; is sufficent. -->


 <tr height="50px;">

    <td ><label for="telnr" style="font:normal 21px 'square kids'; color:#020202; float:right;">Phone No:</label></TD>

    <td><input  type="text" rows="2" cols="36" style="height:30px; width:200px;" size="50" name="telnr" id="telnr" 

         onchange="validateTelnr(this, 'inf_telnr', true);"/></td>

    <td id="inf_telnr" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required.</td>

  </tr>
  
 <tr height="50px;">

    <td><label for="subject" style="font:normal 21px 'square kids'; color:#020202; float:right;">Subject:</label></TD>

    <td><input type="text" rows="2" cols="36" style=" height:30px; width:200px;" size="50" name="subject"  id="subject" 

         onchange="validatesubject(this, 'inf_subject');"></td>

    <td id="inf_subject" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>
  
 <tr height="50px;">

    <td><label for="message" style="font:normal 21px 'square kids'; color:#020202; float:right;">Message:</label></td>

    <td><input  type="text" rows="2" cols="36" style=" height:30px; width:200px;" size="50" name="message" id="message"  

        onchange="validatemessage(this, 'inf_message');"/>
        
       
        </td>

    <td id="inf_message" style=" color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>


 <tr height="50px;">

    <td>&nbsp;</td>

    <td><input type="image" src="images/submit.jpg" name="Submit" value"Send" style="font-size:18px; color:#F00; border:0px; width:127px; height:37px; " /></td>

    <td>&nbsp;</td>

  </tr>



</table>
</form>
    </body>
</html>
