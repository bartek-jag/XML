<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="dostawcy.xsl"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />
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

	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" href="style.css"/>
			</head>
			<body>
				<xsl:call-template name="dostawcy"/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>