<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:import href="napoje.xsl"/>
	<xsl:import href="dostawcy.xsl"/>
	<xsl:import href="producenci.xsl"/>

	<xsl:output method="html" encoding="utf-8" indent="yes" />

	<xsl:template match="/hurtownia">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<link rel="stylesheet" href="style.css"/>
				<script src="skrypty.js">
					
				</script>
			</head>
			<body>
				<xsl:comment>=================NAPOJE==================</xsl:comment>

				<xsl:call-template name="napoje"/>


				<div id="podzial">
					<div id="dostawcy">
						<xsl:comment>=================DOSTAWCY================</xsl:comment>

						<xsl:call-template name="dostawcy"/>
					</div>
					<div id="producenci">
						<xsl:comment>=================PRODUCENCI==============</xsl:comment>

						<xsl:call-template name="producenci"/>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>


<!--
sort, if, for-each, choose, variable, element, attribute, value-of, text, import, call-template

contains(hurtownia/napoje/napoj/@nieaktualne, 'true')
@nieaktualne='true'
format-number(cena,'#.##')
dostawcy/dostawca[imie] / [nazwa]




XSLT (5 pkt.)
Utworzenie przydatnego arkusza przekszatłcającego na inny plik XML lub HTML lub xHTML (w przypadku XML max. 0,5 pkt.
w przypadku HTML/xHTML max. 1,5 pkt.).

Przy ocenianiu pod uwagę zostanie wzięta estetyka utworzonego pliku (wygląd, użycie CSS w przypadku HTML itp.),
użycie różnych elementów w HTML np. odsyłacze oraz to czy plik przechodzi walidację (walidator w przypadku HTML).

Praktyczne użycie elementów (0,25 pkt. za każdy różny, max. 2 pkt.), tj. sortowanie, instrukcja warunkowa, pętla,
wybór (nie liczymy szablonów).

Praktyczne wykorzystanie funkcji i predykatów w XPath (0,25 pkt. za każdy różny, max. 1,5 pkt.).

-->