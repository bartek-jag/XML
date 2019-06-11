<?xml version="1.0" encoding="UTF-8"?>
<!--Tworzy tabelę napojów-->
<xsl:stylesheet version="2.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xhtml" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes" encoding="utf-8"/>

	<!--Czy baza zawiera napoje nieaktualne?-->
	<xsl:variable name="akt" select="contains(hurtownia/napoje/napoj/@nieaktualne, 'true')"/>
	<!--Suma wszystkich napojów-->
	<xsl:variable name="iloscSztukNapojow" select="sum(hurtownia/napoje/napoj/ilosc)"/>
	<!--Ilość unikalnych typów napojów-->
	<xsl:variable name="iloscNapojow" select="count(hurtownia/napoje/napoj)"/>

	<!--Ten szablon jest importowany przez hurtownia.xsl-->
	<xsl:template match="/hurtownia" name="napoje">
		<div xmlns="http://www.w3.org/1999/xhtml">
			<h1>Napoje</h1>
			<table id="tabelaNapoje">
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

						<!--Atrybut wykorzystywany w funkcji kolor()-->
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

							<!--Formatowanie waluty-->
							<xsl:value-of select="format-number(cena,'#.##')"/>
							<xsl:text> zł</xsl:text>

						</td>
						<td class="opis">
							<xsl:value-of select="opis"/>
						</td>
						<xsl:if test="$akt">
							<td>

								<!--Dodaje kolumne "aktualne" do tabeli w przypadku gdy baza zawiera napoje nieaktualne-->
								<xsl:choose>
									<xsl:when test="@nieaktualne='true'">
										<xsl:element name ="img">
											<xsl:attribute name ="class">aktualneObraz</xsl:attribute>
											<xsl:attribute name ="src">no.png</xsl:attribute>
											<xsl:attribute name ="alt">nieaktualne</xsl:attribute>
										</xsl:element>
									</xsl:when>
									<xsl:otherwise>
										<xsl:element name ="img">
											<xsl:attribute name ="class">aktualneObraz</xsl:attribute>
											<xsl:attribute name ="src">yes.png</xsl:attribute>
											<xsl:attribute name ="alt">aktualne</xsl:attribute>
										</xsl:element>
									</xsl:otherwise>
								</xsl:choose>

							</td>
						</xsl:if>
					</xsl:element>
				</xsl:for-each>

				<tr id="podsumowanie">
					<td colspan="4" class="id">
						<xsl:text>Podsumowanie</xsl:text>
					</td>

					<td colspan="2" id="razemSztuk">
						<span>
							<xsl:value-of select="$iloscSztukNapojow"/>
						</span>
					</td>

					<!--Średnia cena napojów-->
					<td colspan="3" id="sredniaCena">
						<span>
							<xsl:value-of select="format-number($iloscSztukNapojow div $iloscNapojow div 1000,'#.##')"/>
						</span>
					</td>

				</tr>
			</table>
		</div>
	</xsl:template>

	<!--Domyślny szablon-->
	<xsl:template match="/hurtownia">
		<html lang="pl-PL" tabela="napoje">
			<head>
				<link rel="stylesheet" href="style.css"/>
				<link rel="shortcut icon" href="fav.png" type="image/x-icon"/>
				<meta name="author" content="Bartosz Jagłowski"/>
				<title>Tabela napoje</title>
			</head>
			<body>
				<xsl:call-template name="napoje"/>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>