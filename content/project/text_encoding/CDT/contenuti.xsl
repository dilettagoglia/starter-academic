<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
  <xsl:output method="html" indent="yes"/>
   
  <xsl:template match="/">
      <html lang="it" style="background-image: url('images/sfondo.jpg'); 
                             background-repeat: no-repeat; 
                             background-attachment: fixed; 
                             background-size: cover;"> 
          <head>
              <meta charset="UTF-8"/> 
              <meta name="description" content=""/>
              <meta name="keywords" content=""/>
              <meta name="author" content="Diletta Goglia"/>
              <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                                  
              <link rel="stylesheet" type="text/css" href="css/stile2.css" />
              <style>
                  @import url('https://fonts.googleapis.com/css?family=Raleway:200');
              </style>
                                             
              <title>Contenuti</title>
          </head>
          
          <body>
              <div class="whiteboxes">
                  <div class="titoli">CONTENUTI</div>
              </div>
              <div class="bgimg-1"> <!--contenitore dei riquadri-->
                  
                  <div class="img">
                      <a href="parte1.xhtml">
                          <img src="images/massmedia.jpg" alt="introduzione" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte1.xml')//tei:head[@n='1']"/>
                          <!--estrae il valore dell'instestazione di primo livello dal documento corrispondente-->
                      </div>
                  </div>
                  
                  <div class="img">
                      <a href="parte2.xhtml">
                          <img src="images/telecomando.jpg" alt="nascita" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte2.xml')//tei:head[@n='1']"/>
                      </div>
                  </div>
                  
                  <div class="img">
                      <a href="parte3.xhtml">
                          <img src="images/tecnologia.jpg" alt="naturalizzazione" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte3.xml')//tei:head[@n='1']"/>
                      </div>
                  </div>
                  
                  <div class="img">
                      <a href="parte4.xhtml">
                          <img src="images/first_person.jpg" alt="soggettivazione" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte4.xml')//tei:head[@n='1']"/>
                      </div>
                  </div>
                  
                  <div class="img">
                      <a href="parte5.xhtml">
                          <img src="images/social.jpg" alt="socializzazione" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte5.xml')//tei:head[@n='1']"/>
                      </div>
                  </div>
                  
                  <div class="img">
                      <a href="parte6.xhtml">
                          <img src="images/metropoli.jpg" alt="conclusioni" width="300" height="200"/></a>
                      <div class="desc">
                          <xsl:value-of select="document('parte6.xml')//tei:head[@n='1']"/>
                      </div>
                      
                  </div>
              </div>
          </body>
      </html>
  </xsl:template>
  
</xsl:stylesheet>