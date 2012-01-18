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

                <div style="width:1100px; height:350px; font-family:Verdana, Geneva, sans-serif; font-size: 28px; color:#000;text-align:justify; background-image:url(images/blue_water_splash_world_map_shutterstock.jpg);">
                    <br> </br>   
                    <br>
                        <table><tr><td width="50px;" ></td>
                                <td>  <s:actionmessage /><s:actionerror /></td> </tr>
                        </table>
                    </br>
                    <br></br>

                </div>
                <s:include value="footer.jsp"></s:include>
            </div>
        </div>

    </body>
</html>
