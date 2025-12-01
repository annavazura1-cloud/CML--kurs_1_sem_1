<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/"> 
    <html> 
      <head>
        <meta charset="UTF-8"/>
        <title>Аттестация</title>
      </head> 
      <body> 
        <h2>Аттестация учеников</h2>
        <table border="1"> 
          <tr bgcolor="#32cdcdff"> 
            <th>Студент</th> 
            <th>Оценки "1"</th>
            <th>Оценки "2"</th>
            <th>Оценки "3"</th>

          </tr> 

          <xsl:for-each select="catalog/cd"> 
            <tr> 
              <!-- имя студента -->
              <td><xsl:value-of select="stydent"/></td> 

                 <!-- оценка 1 с цветовым выделением -->
              <xsl:choose>
                <xsl:when test="mark1 &lt; 4">
                  <td bgcolor="#ffcccc"><xsl:value-of select="mark1"/></td>
                </xsl:when>
                <xsl:when test="mark1 &gt; 8">
                  <td bgcolor="#ccffcc"><xsl:value-of select="mark1"/></td>
                </xsl:when>
                <xsl:otherwise>
                  <td><xsl:value-of select="mark1"/></td>
                </xsl:otherwise>
              </xsl:choose>

                <!-- оценка 2 с цветовым выделением -->
              <xsl:choose>
                <xsl:when test="mark2 &lt; 4">
                  <td bgcolor="#ffcccc"><xsl:value-of select="mark2"/></td>
                </xsl:when>
                <xsl:when test="mark2 &gt; 8">
                  <td bgcolor="#ccffcc"><xsl:value-of select="mark2"/></td>
                </xsl:when>
                <xsl:otherwise>
                  <td><xsl:value-of select="mark2"/></td>
                </xsl:otherwise>
                 <!-- оценка 3 с цветовым выделением -->
              </xsl:choose>
              <xsl:choose>
                <xsl:when test="mark3 &lt; 4">
                  <td bgcolor="#ffcccc"><xsl:value-of select="mark3"/></td>
                </xsl:when>
                <xsl:when test="mark3 &gt; 8">
                  <td bgcolor="#ccffcc"><xsl:value-of select="mark3"/></td>
                </xsl:when>
                <xsl:otherwise>
                  <td><xsl:value-of select="mark3"/></td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
