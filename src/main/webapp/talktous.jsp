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
        <title>EduBiz TalktoUs</title>
<SCRIPT TYPE="text/javascript">


  function validateOnSubmit() {

    var elem;

    var errs=0;

    
    if (!validateTelnr  (document.forms.talk.telnr, 'inf_telnr', true)) errs += 1; 

    if (!validatesubject(document.forms.talk.subject, 'inf_subject', true)) errs += 1; 

    if (!validateEmail  (document.forms.talk.email, 'inf_email', true)) errs += 1; 

    if (!validatename(document.forms.talk.name,  'inf_name'))        errs += 1; 
	
	if (!validatename(document.forms.talk.message,  'inf_message'))        errs += 1; 



    return (errs==0);

  };
  
 

var nbsp = 160;		
var node_text = 3;	
var emptyString = /^\s*$/ ;
var global_valfield;	


function trim(str)
{
  return str.replace(/^\s+|\s+$/g, '');
}



function setFocusDelayed()
{
  global_valfield.focus();
}

function setfocus(valfield)
{
  
  global_valfield = valfield;
  setTimeout( 'setFocusDelayed()', 100 );
}


function msg(fld,msgtype,message) 
{
  
  var dispmessage;
  if (emptyString.test(message)) 
    dispmessage = String.fromCharCode(nbsp);    
  else  
    dispmessage = message;

  var elem = document.getElementById(fld);
  elem.firstChild.nodeValue = dispmessage;  
  
  elem.className = msgtype;   // set the CSS class to adjust appearance of message
}

// --------------------------------------------
//            commonCheck
// Common code for all validation routines to:
// (a) check for older / less-equipped browsers
// (b) check if empty fields are required
// Returns true (validation passed), 
//         false (validation failed) or 
//         proceed (don't know yet)
// --------------------------------------------

var proceed = 2;  

function commonCheck    (valfield,   // element to be validated
                         infofield,  // id of element to receive info/error msg
                         required)   // true if required
{
  if (!document.getElementById) 
    return true;  // not available on this browser - leave validation to the server
  var elem = document.getElementById(infofield);
  if (!elem.firstChild) return true;  // not available on this browser 
  if (elem.firstChild.nodeType != node_text) return true;  // infofield is wrong type of node  

  if (emptyString.test(valfield.value)) {
    if (required) {
      msg (infofield, "error", "ERROR: required");  
      setfocus(valfield);
      return false;
    }
    else {
      msg (infofield, "warn", "");   // OK
      return true;  
    }
  }
  return proceed;
}

// --------------------------------------------
//            validatename
// Validate if something has been entered
// Returns true if so 
// --------------------------------------------

function validatename(valfield,   // element to be validated
                         infofield ) // id of element to receive info/error msg
{
  var stat = commonCheck (valfield, infofield, true);
  if (stat != proceed) return stat;

  msg (infofield, "warn", "");  
  return true;
}

// --------------------------------------------
//            validatesubject
// Validate if something has been entered
// Returns true if so 
// --------------------------------------------

function validatesubject(valfield,   // element to be validated
                         infofield ) // id of element to receive info/error msg
{
  var stat = commonCheck (valfield, infofield, true);
  if (stat != proceed) return stat;

  msg (infofield, "warn", "");  
  return true;
}


// --------------------------------------------
//            validatemessage
// Validate if something has been entered
// Returns true if so 
// --------------------------------------------

function validatesmessage(valfield,   // element to be validated
                         infofield ) // id of element to receive info/error msg
{
  var stat = commonCheck (valfield, infofield, true);
  if (stat != proceed) return stat;

  msg (infofield, "warn", "");  
  return true;
}

// --------------------------------------------
//               validateEmail
// Validate if e-mail address
// Returns true if so (and also if could not be executed because of old browser)
// --------------------------------------------

function validateEmail  (valfield,   // element to be validated
                         infofield,  // id of element to receive info/error msg
                         required)   // true if required
{
  var stat = commonCheck (valfield, infofield, required);
  if (stat != proceed) return stat;

  var tfld = trim(valfield.value);  // value of field with whitespace trimmed off
  var email = /^[^@]+@[^@.]+\.[^@]*\w\w$/  ;
  if (!email.test(tfld)) {
    msg (infofield, "error", "ERROR: not a valid e-mail address");
    setfocus(valfield);
    return false;
  }

  var email2 = /^[A-Za-z][\w.-]+@\w[\w.-]+\.[\w.-]*[A-Za-z][A-Za-z]$/  ;
  if (!email2.test(tfld)) 
    msg (infofield, "warn", "Unusual e-mail address - check if correct");
  else
    msg (infofield, "warn", "");
  return true;
}


// --------------------------------------------
//            validateTelnr
// Validate telephone number
// Returns true if so (and also if could not be executed because of old browser)
// Permits spaces, hyphens, brackets and leading +
// --------------------------------------------

function validateTelnr  (valfield,   // element to be validated
                         infofield,  // id of element to receive info/error msg
                         required)   // true if required
{
  var stat = commonCheck (valfield, infofield, required);
  if (stat != proceed) return stat;

  var tfld = trim(valfield.value);  // value of field with whitespace trimmed off
  var telnr = /^\+?[0-9 ()-]+[0-9]$/  ;
  if (!telnr.test(tfld)) {
    msg (infofield, "error", "ERROR: not a valid telephone number. Characters permitted are digits, space ()- and leading +");
    setfocus(valfield);
    return false;
  }

  var numdigits = 0;
  for (var j=0; j<tfld.length; j++)
    if (tfld.charAt(j)>='0' && tfld.charAt(j)<='9') numdigits++;

  if (numdigits<6) {
    msg (infofield, "error", "ERROR: " + numdigits + " digits - too short");
    setfocus(valfield);
    return false;
  }

  if (numdigits>14)
    msg (infofield, "warn", numdigits + " digits - check if correct");
  else { 
    if (numdigits<10)
      msg (infofield, "warn", "Only " + numdigits + " digits - check if correct");
    else
      msg (infofield, "warn", "");
  }
  return true;
}

</SCRIPT>
    </head>
    <body>
         <form name="talk" onSubmit="return validateOnSubmit()" action="talktous.action" method="post">
			<table height="350"  >

  <tr height="50px;">

    <td>

        <label for="fname" style="font:normal 21px 'square kids'; color:#020202; float:right;" >Name:</label></td>

    <td><input type="text" name="name" id="name" rows="2" cols="36" style="height:30px; width:200px;" size="50" onChange="validatename(this, 'inf_name');" />
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

    <td><input  type="text" rows="2" cols="36" style="height:30px; width:200px;" size="50" name="phone" id="telnr" 

         onchange="validateTelnr(this, 'inf_telnr', true);"/></td>

    <td id="inf_telnr" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>
  
 <tr height="50px;">

    <td><label for="subject" style="font:normal 21px 'square kids'; color:#020202; float:right;">Subject:</label></TD>

    <td><input type="text" rows="2" cols="36" style=" height:30px; width:200px;" size="50" name="subject"  id="subject" 

         onchange="validatesubject(this, 'inf_subject');"></td>

    <td id="inf_subject" style="color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>
  
 <tr height="50px;">

    <td><label for="message" style="font:normal 21px 'square kids'; color:#020202; float:right;">Message:</label></td>

    <td><textarea name="feedback" id="message"  cols="24" rows="6"

        onchange="validatemessage(this, 'inf_message');">
        </textarea>
       
        </td>

    <td id="inf_message" style=" color:#C30; font:bold 15px calibri, Arial, Helvetica, sans-serif;">Required</td>

  </tr>


 <tr height="50px;">

    <td>&nbsp;</td>

    <td><input type="submit" value="" style=" background-image:url(images/submit.jpg); width: 100px; height: 30px;"/></td>

    <td>&nbsp;</td>

  </tr>



</table>
</form>
    </body>
</html>
