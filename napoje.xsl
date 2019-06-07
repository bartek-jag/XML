<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="napoje.xsl"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:variable name="akt" select="contains(hurtownia/napoje/napoj/@nieaktualne, 'true')"/>
	<xsl:variable name="iloscSztukNapojow" select="sum(hurtownia/napoje/napoj/ilosc)"/>
	<xsl:variable name="iloscNapojow" select="count(hurtownia/napoje/napoj)"/>

	<xsl:template match="/hurtownia" name="napoje">
		<h1>Napoje</h1>
		<table id="napoje">
			<tr>
				<th>id</th>
				<th>rodzaj</th>
				<th>nazwa</th>
				<th>gaz</th>
				<th>smak</th>
				<th>ilość</th>
				<th>cena</th>
				<th>opis</th>
				<xsl:if test="$akt">
					<th>aktualne</th>
				</xsl:if>
			</tr>
			<xsl:for-each select="napoje/napoj">
				<xsl:element name="tr">
					<xsl:attribute name="producent">
						<xsl:value-of select="producent"/>
					</xsl:attribute>
					<td class="id">
						<xsl:value-of select="@id"/>
					</td>
					<td class="rodzaj">
						<xsl:value-of select="@rodzaj"/>
					</td>
					<td class="nazwa">
						<xsl:value-of select="nazwa"/>
					</td>
					<td class="gaz">
						<xsl:value-of select="gaz"/>
					</td>
					<td class="smak">
						<xsl:value-of select="smak"/>
					</td>
					<td class="ilosc">
						<xsl:value-of select="ilosc"/>
						<xsl:text> sztuk</xsl:text>
					</td>
					<td class="cena">
						<xsl:value-of select="format-number(cena,'#.##')"/>
						<xsl:text> zł</xsl:text>
					</td>
					<td class="opis">
						<xsl:value-of select="opis"/>
					</td>
					<xsl:if test="$akt">
						<td>
							<xsl:choose>
								<xsl:when test="@nieaktualne='true'">
									<img class="aktualneObraz" src="no.png" alt="nieaktualne"/>
								</xsl:when>
								<xsl:otherwise>
									<img class="aktualneObraz" src="yes.png" alt="aktualne"/>
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</xsl:if>
				</xsl:element>
			</xsl:for-each>
			<tr id="podsumowanie">
				<td colspan="4" class="id">
					Podsumowanie
				</td>
				<td colspan="2" id="razemSztuk">
					<span>
						<xsl:value-of select="$iloscSztukNapojow"/>
					</span>
				</td>
				<td colspan="3" id="sredniaCena">
					<span>
						<xsl:value-of select="format-number($iloscSztukNapojow div $iloscNapojow div 1000,'#.##')"/>
					</span>
				</td>
			</tr>
		</table>
	</xsl:template>

	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" href="style.css"/>
			</head>
			<body>
				<xsl:call-template name="napoje"/>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>