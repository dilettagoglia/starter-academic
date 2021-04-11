<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html lang="it"> 
      <head>
        <meta charset="UTF-8"/> 
        <meta name="description" content=""/>
        <meta name="keywords" content=""/>
        <meta name="author" content="Diletta Goglia"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/stile1.css"/>
        <style>
          @import url('https://fonts.googleapis.com/css?family=Julius+Sans+One|Lato:100|Raleway:100');
        </style>
        <title>
          <xsl:value-of select="//tei:titlePart[@type='main']"/>
        </title>
      </head>

      <body>
        <div class="bgimg-0">
          <div class="caption">
            <span class="border" id="author">
              <xsl:apply-templates select="//tei:docAuthor"/>
            </span>
            <br/>
            <br/>
            <span class="border" id="title_main">
              <a href="contenuti.xhtml">
                <xsl:apply-templates select="//tei:titlePart[@type='main']"/>
              </a>
            </span>
            <br/>
            <span class="border" id="title_sub">
              <xsl:apply-templates select="//tei:titlePart[@type='sub']"/>
            </span>
            <br/><br/>
            <br/><br/>
            <span class="border" id="pub">
              <xsl:value-of select="//tei:docImprint/tei:publisher"/>
            </span>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>