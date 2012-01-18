<%-- 
    Document   : feedback
    Created on : Jan 10, 2012, 6:53:25 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <div>	
	<div id="feedback" >	
<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'" style="background-color:#000;">Feedback
</a>
</div>
		<div id="light" class="white_content" style=" width:700px; height: 420px;"><a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'" style="padding-left:645px;"><img src="images/close.jpg"/></a>
        <br><form id="form" class="form" action="suggestion.action" method="post">
	<div class="input-box" checkfield="#input-name" checkrule="text">
		<label><strong>Name</strong></label>
		<input type="text" id="input-name" name="name" />
		<span class="check"></span>
		<span class="error"></span>
	</div>
	<div class="input-box" checkfield="#input-email" checkrule="email" checkerror="Please enter a valid e-mail address">
		<label><strong>E-mail</strong></label>
		<input type="text" id="input-email" name="email"  />
		<span class="check"></span>
		<span class="error"></span>
	</div>
	<div class="input-box" checkfield="#input-number" checkrule="phone:empty" checkerror="Please enter a valid phone number">
		<label><strong>Phone number (optional)</strong></label>
		<input type="text" id="input-number" name="phone" />
		<span class="check"></span>
		<span class="error"></span>
	</div>
	<div class="input-box" checkfield="#input-address" checkrule="text">
		<label><strong>Message</strong></label>
		<textarea type="text" id="input-address" name="feedback"  style=" height:90px;" rows="3"></textarea>
		<span class="check"></span>
		<span class="error"></span>
	</div>
	
	
	<div class="input-box">
            <input type="submit" value="" onClick="javascript: return aw_check('#form');" style=" background-image:url(images/submit.jpg); width: 100px; height: 30px;" />
	</div>
</form>
 </div>
		<div id="fade" class="black_overlay"></div>
	</div>
    
    </body>
</html>
