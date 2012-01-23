<%-- 
    Document   : menu
    Created on : Jan 7, 2012, 1:36:54 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>menu</title>
    </head>
    <body>
        <div style="width:1100px; height:150px; background-color:#000;">
            <div style="float:left; padding-top:30px; padding-left:30px;"><img src="images/dphix_logo.png" /></div>
            <div id="header" class="clear" style="background-color:#020202;">

                <div class="content" style="padding-left:400px; padding-top:60px;" >

                    <ul id="sdt_menu" class="sdt_menu">
                        <li>
                            <a href="index.jsp">
                                <img src="images/1.png"  height="100" alt=""/>
                                <span class="sdt_active" style="opacity:0.3;
                                      filter:alpha(opacity=30);"></span>
                                <span class="sdt_wrap">
                                    <span class="sdt_link">&nbsp;&nbsp;&nbsp;Home</span>
                                    <span class="sdt_descr">Sweet Home</span>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="career.jsp">
                                <img src="images/3.png" height="100" alt=""/>
                                <span class="sdt_active" style="opacity:0.3;
                                      filter:alpha(opacity=30);"></span>
                                <span class="sdt_wrap">
                                    <span class="sdt_link">&nbsp;&nbsp;&nbsp;Careers</span>
                                    <span class="sdt_descr">Join Us</span>
                                </span>
                            </a>

                        </li>

                        <li>
                            <a href="contactus.jsp">
                                <img src="images/2.png"  height="150" alt=""/>
                                <span class="sdt_active" style="opacity:0.3;
                                      filter:alpha(opacity=30);"></span>
                                <span class="sdt_wrap">
                                    <span class="sdt_link">Contact Us</span>
                                    <span class="sdt_descr">Where Are We </span>
                                </span>
                            </a>
                        </li>

                        <li >
                            <table>
                                <tr>
                                    <td>
                                        <a href="https://www.facebook.com/EdubizTech" id="facebook"></a>
                                    </td>
                                    <td>
                                        <a id="twitter" href="https://twitter.com/edubiztech"></a>                                        
                                    </td>
                                    <td>
                                        <a href="http://www.linkedin.com/company/edubiz" id="in"></a>
                                    </td>
                                </tr>
                            </table>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
