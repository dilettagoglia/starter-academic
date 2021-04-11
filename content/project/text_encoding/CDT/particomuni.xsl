<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html lang="it" style="background-image: url('sfondo.jpg'); 
            background-repeat: no-repeat; 
            background-attachment: fixed; 
            background-size: cover;"> 
            <head>
                <meta charset="UTF-8"/> 
                
                <!--estrazione delle keywords dal profileDesc-->
                <xsl:variable name="key">
                    <xsl:for-each select="document('main.xml')//tei:keywords//tei:item">
                        <xsl:value-of select="."/>, 
                    </xsl:for-each>
                </xsl:variable>
                <meta name="keywords" content="{$key}"/>
                
                <meta name="author" content="Diletta Goglia"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                
                <link rel="stylesheet" type="text/css" href="css/stile3.css" />
                <style>
                    @import url('https://fonts.googleapis.com/css?family=Raleway:200');
                </style>
                
                <title>La condizione postmediale: parti comuni</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:group">
        <!-- navbar -->
        <ul class="topnav" id="navbar">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a href="parte2.xhtml">Parte II</a></li>
            <li><a href="parte3.xhtml">Parte III</a></li>
            <li><a href="parte4.xhtml">Parte IV</a></li>
            <li><a href="parte5.xhtml">Parte V</a></li>
            <li><a href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra" id="left_div">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="contenuti.xhtml"><div class="capitoli">Torna ai contenuti</div></a> <!--permette di tornare indietro-->
                    <a href="main.xhtml"><div class="capitoli">Vai al frontespizio</div></a>
                    <a href="#colophon"><div class="capitoli">Colophon</div></a> 
                    <a href="#ringraziamenti"><div class="capitoli">Ringraziamenti</div></a>
                    <a href="#strumenti"><div class="capitoli">Strumenti e riferimenti</div></a>
                    <a href="#retro"><div class="capitoli">Retro</div></a>
                    <a href="#versione_digitale"><div class="capitoli">Versione digitale</div></a>
                </div>
                <div class="centro" id="center_div">
                    <xsl:apply-templates/>
                </div>
            </div>
        </div>	
    </xsl:template>
    
    <!--creazione di un id per ogni sezione di testo-->
    <xsl:template match="tei:group//tei:text"> <!--solo per i testi dentro il raggruppamento-->
        <xsl:for-each select=".">
            <div id="{@xml:id}">
                <xsl:apply-templates/>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <!--paragrafi-->
    <xsl:template match="tei:body//tei:p"> <!--deve fare match solo con i p del body, altrimenti crea spazi a livello dell'instestazione, spostando la barra di navigazione-->
        <!--per ogni elemento p crea un div e NON un altro p (necessario per la resa grafica), evita l'allinearsi di elementi div e p allo stesso
        livello che GENERA ERRORE.-->
        <div>
            <xsl:apply-templates/>
            <br/>
        </div>
    </xsl:template>
    
    <!--intestazioni-->
    <xsl:template match="tei:head">
        <xsl:choose>
            <xsl:when test="@n='1'"> <!--quando trova un'intestazione di primo livello-->
                <h1>
                    <xsl:apply-templates/> <!--crea un tag h1-->
                </h1>
            </xsl:when>
            <xsl:when test="@n='2'"> <!--quando trova un'intestazione di secondo livello-->
                <h2>
                    <xsl:apply-templates/> <!--crea un tag h2-->
                </h2>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <!--formattazione-->
    <xsl:template match="*[@rend]">
        <xsl:choose>
            <xsl:when test="@rend='PRE quot POST quot'"> 
                "<xsl:apply-templates/>"
            </xsl:when>
            <xsl:when test="@rend='PRE laquo POST raquo'"> 
                &#171;<xsl:apply-templates/>&#187;
            </xsl:when>
            <xsl:when test="@rend='italic'"> 
                <i>
                    <xsl:apply-templates/>
                </i>
            </xsl:when>
            <xsl:when test="@rend='bold'"> 
                <b>
                    <xsl:apply-templates/>
                </b>
            </xsl:when>
            <!--nuova linea di testo (non  usare lb perchè non è possibile includerlo in molti elementi)-->
            <xsl:when test="@rend='hr'"> 
                <hr><xsl:apply-templates/></hr>
            </xsl:when>
            <!--ritorno a capo-->
            <xsl:when test="@rend='br'"> 
                <br/>
            </xsl:when>
            <!--liste-->
            <xsl:when test="@rend='bulleted'"> 
                <ul>
                    <xsl:for-each select="tei:item">
                        <li><xsl:apply-templates/></li><br/>
                    </xsl:for-each>
                </ul>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="tei:list//tei:term">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <!--resa grafica delle cit. bibliografiche-->
    <xsl:template match="tei:title">   
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <!--resa grafica delle named entities-->
    <xsl:template match="tei:name[@ref]"> <!--ogni volta che trovo un riferimento-->
        <xsl:variable name="var_name"> 
            <xsl:value-of select="@ref"/> <!--lo salvo in una variabile-->
        </xsl:variable>
            <div class="tooltip">
                <!--estraggo il commento per evitare distinzioni per nomi di persona/luogo/organizzazione, ecc...-->
                <xsl:value-of select="document('main.xml')//*[@xml:id=$var_name]//comment()"/>
                <div class="tooltiptext">
                    <!--estraggo solo la descrizione (secondo figlio), non il nome-->
                    <xsl:apply-templates select="document('main.xml')//*[@xml:id=$var_name]/*[position()>1]"/>
                    <!--uso "apply-templates" e non "value-of" per avere i ritorni a capo anche dentro i "fumetti"-->
                </div>
            </div>
    </xsl:template>
    
   
    <xsl:template match="tei:ref"> 
        <xsl:choose> 
            <!--inserimenti di parti di testo già presenti altrove-->        
            <xsl:when test="@n='inser_text'"> 
                <xsl:variable name="var_ref"> 
                    <xsl:value-of select="@target"/> <!--lo salvo in una variabile-->
                </xsl:variable>
                <xsl:apply-templates select="document('main.xml')//*[@xml:id=$var_ref]"/> <!--restituisco il nodo con id corrispondente-->  
            </xsl:when>
            <!--resa grafica dei link-->
            <xsl:when test="@n='website'">
                <a href="{@target}">
                    <xsl:apply-templates/>
                </a>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!--versione digitale: parti riprese dal teiHeader-->
    <xsl:template match="tei:div[@xml:id]">
        <xsl:choose>
            <xsl:when test="@xml:id='copyright'"> 
                <p><xsl:apply-templates select="document('main.xml')//tei:publicationStmt//tei:licence"/></p>
            </xsl:when>
            <xsl:when test="@xml:id='progetto'"> 
                <p><xsl:apply-templates select="document('main.xml')//tei:encodingDesc//tei:projectDesc"/></p>
            </xsl:when>
            <xsl:when test="@xml:id='codifica'"> 
                <p><xsl:apply-templates select="document('main.xml')//tei:encodingDesc//tei:refsDecl"/></p>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>