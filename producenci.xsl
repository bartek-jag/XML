<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="producenci.xsl"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:template match="/hurtownia" name="producenci">
		<h1>Producenci</h1>
		<table id="producenci">
			<tr>
				<th>lp</th>
				<th>nazwa</th>
			</tr>
			<xsl:for-each select="producenci/producent">
				<xsl:sort select="." order="ascending"/>
				<xsl:element name="tr">
					<xsl:attribute name="id">
						<xsl:value-of select="."/>
					</xsl:attribute>
					<xsl:attribute name="onClick">
						<xsl:text>kolor('</xsl:text>
						<xsl:value-of select="."/>
						<xsl:text>', '</xsl:text>
						<xsl:value-of select="."/>
						<xsl:text>')</xsl:text>
					</xsl:attribute>
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

	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" href="style.css"/>
			</head>
			<body>
				<xsl:call-template name="producenci"/>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>