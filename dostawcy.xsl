<?xml version="1.0" encoding="UTF-8"?>
<!--Tworzy tabelę dostawców-->
<xsl:stylesheet version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<!--Ten szablon jest importowany przez hurtownia.xsl-->
	<xsl:template match="/hurtownia" name="dostawcy">
		<h1>Dostawcy</h1>
		<table id="dostawcy">
			
			<tr>
				<th>id</th>
				<th>imie</th>
				<th>nazwisko</th>
				<th>email</th>
				<th>numer telefonu</th>
			</tr>

			<!--Wybiera tylko dostawców którzy są ludźmi-->
			<xsl:for-each select="dostawcy/dostawca[imie]">
				
				<tr>
					<td class="id">
						<xsl:value-of select="@id"/>
					</td>
					<td class="imie">
						<xsl:value-of select="imie"/>
					</td>
					<td class="nazwisko">
						<xsl:value-of select="nazwisko"/>
					</td>
					<td class="email">
						<xsl:value-of select="email"/>
					</td>
					<td class="numerTelefonu">
						<xsl:value-of select="numerTelefonu"/>
					</td>
				</tr>
				
			</xsl:for-each>
		</table>
		<table id="dostawcy">
			
			<tr>
				<th>id</th>
				<th>nazwa</th>
				<th>NIP</th>
				<th>numer telefonu</th>
			</tr>
			
			<!--Wybiera firmy dostawcze-->
			<xsl:for-each select="dostawcy/dostawca[nazwa]">
				
				<tr>
					<td class="id">
						<xsl:value-of select="@id"/>
					</td>
					<td class="nazwa">
						<xsl:value-of select="nazwa"/>
					</td>
					<td class="nip">
						<xsl:value-of select="nip"/>
					</td>
					<td class="numerTelefonu">
						<xsl:value-of select="numerTelefonu"/>
					</td>
				</tr>
				
			</xsl:for-each>
		</table>
	</xsl:template>

	<!--Domyślny szablon-->
	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html lang="pl-PL" tabela="dostawcy">
			<head>
				<link rel="stylesheet" href="style.css"/>
				<link rel="shortcut icon" href="fav.png" type="image/x-icon"/>
				<meta charset="utf-8"/>
				<meta name="author" content="Bartosz Jagłowski"/>
				<title>Tabela dostawcy</title>
			</head>
			<body>
				<xsl:call-template name="dostawcy"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>