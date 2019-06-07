<?xml version="1.0" encoding="UTF-8"?>
<!--Tworzy tabele producentów-->
<xsl:stylesheet version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<!--Ten szablon jest importowany przez hurtownia.xsl-->
	<xsl:template match="/hurtownia" name="producenci">
		<h1>Producenci</h1>
		<table id="producenci">
			<tr>
				<th>lp</th>
				<th>nazwa</th>
			</tr>
			<xsl:for-each select="producenci/producent">
				<!--Producenci są sortowanie alfabetycznie-->
				<xsl:sort select="." order="ascending"/>
				
				<xsl:element name="tr">
					
					<!--Atrybut wykorzystywany w funkcji kolor()-->
					<xsl:attribute name="id">
						<xsl:value-of select="."/>
					</xsl:attribute>

					<!--Wskazuje wiersze posiadające podanego producenta-->
					<xsl:attribute name="onClick">
						<xsl:text>kolor('</xsl:text>
						<xsl:value-of select="."/>
						<xsl:text>')</xsl:text>
					</xsl:attribute>
					
					<!--Wiersze są numerowane automatycznie-->
					<td class="id">
						<span class="lp"></span>
					</td>
					
					<td class="producent">
						<xsl:value-of select="."/>
					</td>
				</xsl:element>
			</xsl:for-each>
		</table>
	</xsl:template>

	<!--Domyślny szablon-->
	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html lang="pl-PL" tabela="producenci">
			<head>
				<link rel="stylesheet" href="style.css"/>
				<link rel="shortcut icon" href="fav.png" type="image/x-icon"/>
				<meta charset="utf-8"/>
				<meta name="author" content="Bartosz Jagłowski"/>
				<title>Tabela producenci</title>
			</head>
			<body>
				<xsl:call-template name="producenci"/>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>