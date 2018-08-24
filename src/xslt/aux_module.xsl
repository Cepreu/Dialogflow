<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   
<!-- Default Window -->
<xsl:template name="auxDefault">
    <div data-role="page" id="wndCallMeBack">
         <div data-role="header">
            <h1>Welcome</h1>
         </div>
         <div data-role="content"  data-theme="b">
              <h2>Welcome to Five9 Visual IVR!</h2>
              <br/><br/>Powered by Five9,Inc
         </div>
    </div>
</xsl:template>

<!--  -->
<xsl:template name="wndMore">
    <div data-role="page" id="wndMore">
         <div data-role="header">
            <h1>More</h1>
         </div>
         <div data-role="content"  data-theme="b">
            <ul data-role="listview">
               <li><a href="#">End Interaction</a></li>
               <li><a href="#">Exit and continue later</a></li>
               <li><a href="http://www.five9.com">Five9 web site</a></li>
            </ul>
         </div>
    </div>
</xsl:template>

</xsl:stylesheet>