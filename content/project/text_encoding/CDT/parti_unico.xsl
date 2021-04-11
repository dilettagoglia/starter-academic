<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:TEI">
        <xsl:for-each select="tei:text[@n]">
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
                    
                    <title> 
                        Parte <xsl:value-of select="@n"/>
                    </title>
                </head>
                
                <body>
                    <xsl:apply-templates/>
                </body>
            </html>
        </xsl:for-each>
    </xsl:template>
    
<!--serie di templates SPECIFICI per ciascuna parte-->
    
    <!--templates parte1-->
    <xsl:template match="tei:text[@xml:id='parte1']//tei:body">
        <!-- navbar -->
        <ul class="topnav" id="navbar">
            <li><a class="active" href="parte1.xhtml">Parte I</a></li>
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
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a>  
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a> <!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
    
    <!--templates parte2-->
    <xsl:template match="tei:text[@xml:id='parte2']//tei:body">
        <!-- navbar -->
        <ul class="topnav">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a class="active" href="parte2.xhtml">Parte II</a></li>
            <li><a href="parte3.xhtml">Parte III</a></li>
            <li><a href="parte4.xhtml">Parte IV</a></li>
            <li><a href="parte5.xhtml">Parte V</a></li>
            <li><a href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                    <a href="#testo4"><div class="capitoli">Capitolo IV</div></a>
                    <a href="#testo5"><div class="capitoli">Capitolo V</div></a>
                    <a href="#testo6"><div class="capitoli">Capitolo VI</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a> 
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a><!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
  
    <!--templates parte3-->
    <xsl:template match="tei:text[@xml:id='parte3']//tei:body">
        <!-- navbar -->
        <ul class="topnav">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a href="parte2.xhtml">Parte II</a></li>
            <li><a class="active" href="parte3.xhtml">Parte III</a></li>
            <li><a href="parte4.xhtml">Parte IV</a></li>
            <li><a href="parte5.xhtml">Parte V</a></li>
            <li><a href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                    <a href="#testo4"><div class="capitoli">Capitolo IV</div></a>
                    <a href="#testo5"><div class="capitoli">Capitolo V</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a> 
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a><!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
    
    <!--templates parte4-->
    <xsl:template match="tei:text[@xml:id='parte4']//tei:body">
        <!-- navbar -->
        <ul class="topnav">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a href="parte2.xhtml">Parte II</a></li>
            <li><a href="parte3.xhtml">Parte III</a></li>
            <li><a class="active" href="parte4.xhtml">Parte IV</a></li>
            <li><a href="parte5.xhtml">Parte V</a></li>
            <li><a href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                    <a href="#testo4"><div class="capitoli">Capitolo IV</div></a>
                    <a href="#testo5"><div class="capitoli">Capitolo V</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a> 
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a><!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
    
    <!--templates parte5-->
    <xsl:template match="tei:text[@xml:id='parte5']//tei:body">
        <!-- navbar -->
        <ul class="topnav">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a href="parte2.xhtml">Parte II</a></li>
            <li><a href="parte3.xhtml">Parte III</a></li>
            <li><a href="parte4.xhtml">Parte IV</a></li>
            <li><a class="active" href="parte5.xhtml">Parte V</a></li>
            <li><a href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                    <a href="#testo4"><div class="capitoli">Capitolo IV</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a> 
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a><!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
    
    <!--templates parte6-->
    <xsl:template match="tei:text[@xml:id='parte6']//tei:body">
        <!-- navbar -->
        <ul class="topnav">
            <li><a href="parte1.xhtml">Parte I</a></li>
            <li><a href="parte2.xhtml">Parte II</a></li>
            <li><a href="parte3.xhtml">Parte III</a></li>
            <li><a href="parte4.xhtml">Parte IV</a></li>
            <li><a href="parte5.xhtml">Parte V</a></li>
            <li><a class="active" href="parte6.xhtml">Parte VI</a></li>
        </ul>
        
        <div class="content" style="padding:5% 16px;">
            <!-- divisione in colonne per layout responsive -->
            <div class="suddivisione_schermo">
                <div class="sinistra">
                    <!--collegamento veloce ai vari capitoli della pagina-->
                    <a href="#testo1"><div class="capitoli">Capitolo I</div></a> 
                    <a href="#testo2"><div class="capitoli">Capitolo II</div></a>
                    <a href="#testo3"><div class="capitoli">Capitolo III</div></a>
                </div>
                <div class="centro">
                    <xsl:apply-templates/>
                </div>
                <div class="destra">
                    <!--parti comuni-->
                    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn"><img src="images/menu.png" alt="menu" style="width:45px; height:45px;"/></a>
                        <div class="dropdown-content"> <!--pagine informative relative all'intero libro (comuni a tutte le parti e capitoli)-->
                            <a href="contenuti.xhtml">Torna ai contenuti</a> <!--permette di tornare indietro-->
                            <a href="main.xhtml">Visualizza il frontespizio</a>
                            <a href="particomuni.xhtml#colophon">Colophon</a>
                            <a href="particomuni.xhtml#ringraziamenti">Ringraziamenti</a> 
                            <a href="particomuni.xhtml#strumenti">Strumenti e riferimenti</a>
                            <a href="particomuni.xhtml#retro">Retro</a>
                            <a href="particomuni.xhtml#versione_digitale">Versione digitale</a><!--info relative alla creazione del documento digitale-->
                        </div>
                    </li>
                </div>
            </div>
        </div>	
    </xsl:template>
   

<!--serie di templates GENERICI, validi per tutte le parti-->  
    
    <!--creazione di un id per ogni sezione di testo-->
    <xsl:template match="tei:body//tei:div">
        <xsl:for-each select="."> <!--estrae il testo dal capitolo corrispondente-->
            <div id="testo{@n}">
                <br/><xsl:apply-templates/>
            </div>
        </xsl:for-each>
    </xsl:template>
    
    <!--paragrafi-->
    <xsl:template match="tei:p">
        <!--per ogni elemento p crea un div e NON un altro p (necessario per la resa grafica), evita l'allinearsi di elementi div e p allo stesso
        livello che GENERA ERRORE.-->
        <div style="display: inline;">
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
            <!--nuova linea di testo (non  usare lb perché non è possibile includerlo in molti elementi)-->
            <xsl:when test="@rend='br'"> 
                <br/>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="tei:list//tei:term">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <!--resa grafica delle note-->
    <xsl:template match="tei:note"> 
        <div class="tooltip"><sup><xsl:value-of select="@n"/></sup>
            <div class="tooltiptext">
                <xsl:apply-templates/>
            </div>
        </div>
    </xsl:template>
    
    <!--resa grafica dei link-->
    <xsl:template match="tei:ref[@n='website']">
        <a href="{@target}">
            <xsl:apply-templates/>
        </a>
    </xsl:template>
    <xsl:template match="*[@n='spot']"> <!--simile al template precedente ma va definito separatamente per evitare due match sovrapposti-->
        <div class="spot">
            <b>
                <a href="{@target}">
                    <xsl:apply-templates/>
                </a>
            </b>
        </div>
    </xsl:template>
    
    <!--resa grafica delle cit. bibliografiche-->  
    <xsl:template match="tei:title"> 
        <i><xsl:apply-templates/></i>
    </xsl:template>

    <!--inserimenti di parti di testo già presenti altrove-->
    <xsl:template match="tei:body//tei:term[@ref]"> <!--ogni volta che trovo un riferimento-->
        <xsl:variable name="var_term"> 
            <xsl:value-of select="@ref"/> <!--lo salvo in una variabile-->
        </xsl:variable>
        <i>
            <xsl:value-of select="//tei:term[@xml:id=$var_term]"/> <!--restituisco il nodo con id corrispondente-->
        </i>
    </xsl:template>
    
    <!--resa grafica delle named entities-->
    <xsl:template match="tei:name[@ref]"> <!--ogni volta che trovo un riferimento-->
        <xsl:variable name="var_name"> 
            <xsl:value-of select="@ref"/> <!--lo salvo in una variabile-->
        </xsl:variable>
        <div class="tooltip">
            <xsl:value-of select="document('main.xml')//*[@xml:id=$var_name]//comment()"/>
            <div class="tooltiptext">
                <xsl:value-of select="document('main.xml')//*[@xml:id=$var_name]/*[position()>1]"/>
            </div>
        </div>
    </xsl:template>
    
    <!--resa grafica di una citazione-->
    <xsl:template match="tei:cit">
        <div style="font-size:90%;">
            <br/>
            <xsl:apply-templates/>
        </div>
    </xsl:template>

</xsl:stylesheet>