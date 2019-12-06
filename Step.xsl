<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- this XSL stylesheet matches the <JavacoTea> tag in an associated XML
	file and replaces it with the HTML contents of the template. -->
    <xsl:template match="/">
        <html>
            <head>
                <title>STEP</title>
                <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
              <link href="css/Step.css" rel="stylesheet" type="text/css" /> 
                <!-- Include the JavaScript code for processing the XML data -->
       
            </head>
            <body>
                           <table id="danceclasses" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">SELECT A DANCE CLASSE TO ENROLL</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Level</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/danceclasses/section">
                            <tr>
                                <td colspan="3"> <!-- colspan takes 3 cullums-->
                                    <xsl:value-of select="@name" /> <!-- taking the attributes - courses name-->
                                </td>
                            </tr>
                            <xsl:for-each select="entree">

                                <tr id="{position()}">
                                <xsl:attribute name="courseselect">
                                    <xsl:value-of select="boolean(./@courseselect)" />
                                </xsl:attribute>

                                    <td align="center">
                                        <input name="level0" type="checkbox"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="level" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>