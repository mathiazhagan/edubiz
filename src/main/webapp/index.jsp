<%-- 
    Document   : index
    Created on : Jan 7, 2012, 1:32:52 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
    <head>
        <title>Home</title>
        <s:head theme="jquery"/>
        <s:include value="header.jsp"></s:include>

        <link rel="stylesheet" href="style.css"/>
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript" src="jquery.aw-check.js"></script>
        <script type="text/javascript">
            jQuery( document ).ready(function() {
	
                // Init form
                aw_check_init( '#form' );
            });
        </script>

    </head>

    <body>
        <s:include value="feedback.jsp"></s:include>
        <!-- /box -->
        <div align="center">

            <div  style="width:1100px; height:1000px;" class="box" >
                <div style="width:1100px; height:150px; background-color:#000;">



                    <s:include value="menu.jsp"></s:include>

                    <div style="width:1100px; height:800px; background-color:#FFF;">
                        <div style="height:400px; width:1100px; background-image:url(images/background.gif);">
                            <s:include value="slide.jsp"></s:include>
                            <div style="width:100%; height:400px; color:#333; font-family:Verdana, Geneva, sans-serif;   font-size:15px; text-align:left; text-align:justify; color:#000;">

                                <div style=" width:100%; height:150px;">
                                    <ul style="width:300px; height:150px; float:left;" >
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Why EduBiz</h3>
                                            <p>We are focusing on developing innovative products to make peoples life easy and comfortable; we took an oath to produce great products at cheaper cost without compensating the quality.</p>
                                        </li>
                                    </ul>

                                    <ul style="width:300px; height:150px; float:left;">
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Focus On What Matter</h3>
                                            <p>We are planning to pursue research and development in AI, cloud computing solutions, embedded systems solution, hardware designs, mobile applications and games. We target to become the prime player in android application.</p>
                                        </li>
                                    </ul>

                                    <ul style="width:300px; height:150px; float:left;">
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Products Innovations</h3>
                                            <p>Our armory of products is currently decorated with a simulation social network game, special social networking product similar to google+, mobile applications, dating and matrimonial site.</p>
                                        </li>
                                    </ul>
                                </div>

                                <div style=" width:100%; height:150px;">
                                    <ul style="width:300px; height:150px; float:left;">
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Our Strength</h3>
                                            <p>We have highly experienced and strong core team with massive investment of time and money. Large human resource of young, talented and highly motivated software developers.</p><br></br>
                                        </li>
                                    </ul>

                                    <ul style="width:300px; height:150px; float:left;" >
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Service</h3>
                                            <p >Application development, application management operation, outsourcing, web technology solutions, enterprise mobility service, e-commerce, android applications, gaming development, social network,etc... </p>
                                        </li>
                                    </ul>
                                    <ul style="width:300px; height:150px; float:left;">
                                        <li>
                                            <h3 style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:21px;">Talk To Us</h3>
                                            <p>Interested in our products, discussing about our mutual benefits.</p>
                                            <br></br>
                                            <a href="contactus.jsp" ><font style="font-family:Verdana, Geneva, sans-serif; color:#014d87; font-size:10px; padding-left:70px; "><input type="submit" name="Click Here" value="Click Here" style="background-color:#014d87; font-size:18px; color:#FFF; border:0px; width:110px; height:24px; -moz-border-radius: 6px;
                                                                                                                                                                                      border-radius: 6px; cursor:pointer;"  /></font></a>
                                                    <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                                        </li>
                                    </ul>
                                </div>

                            </div>
                            <s:include value="footer.jsp"></s:include>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
