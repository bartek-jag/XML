<?xml version="1.0" encoding="utf-8"?>
<!--Transformacja wyświetla wiekszość informacji z bazy-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!--Import tabel-->
	<xsl:import href="napoje.xsl"/>
	<xsl:import href="dostawcy.xsl"/>
	<xsl:import href="producenci.xsl"/>

	<xsl:output method="xhtml" indent="yes" encoding="utf-8"/>

	<xsl:template match="/hurtownia">
		<html lang="pl-PL">
			<head>
				<link rel="stylesheet" href="style.css"/>
				<link rel="shortcut icon" href="fav.png" type="image/x-icon"/>
				<meta charset="utf-8"/>
				<meta name="author" content="Bartosz Jagłowski"/>
				<title>Hurtownia napojów</title>
				<script src="skrypty.js"/>
			</head>
			<body>

				<xsl:comment>=================NAPOJE==================</xsl:comment>
				<xsl:call-template name="napoje"/>

				<!--Tabele dostawców i producentów sąsiądują ze sobą linii-->
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