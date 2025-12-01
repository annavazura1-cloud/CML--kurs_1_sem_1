<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

  <xsl:template match="/"> 
    <html> 
      <head>
      </head> 
      <body> 
        <table border="1"> 
          <tr bgcolor="#9acd32"> 
            <th>Дата</th> 
            <th>Тип</th> 
            <th>Описание</th> 
          </tr> 
          <!-- Перебираем все события -->
          <xsl:for-each select="events/event"> 
            <!-- Сортировка по возрастанию даты -->
            <xsl:sort select="date" data-type="text" order="ascending"/> 
            <tr> 
              <td><xsl:value-of select="date"/></td> 
              <td><xsl:value-of select="type"/></td> 
              <td><xsl:value-of select="description"/></td> 
            </tr> 
          </xsl:for-each>
        </table> 
      </body> 
    </html> 
  </xsl:template> 
</xsl:stylesheet>
