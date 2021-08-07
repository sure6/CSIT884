<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	<xsl:template match="/result">
		<html>
			<head>
				<title>xslt example</title>
			</head>
			<body>
				<h2>Exam result</h2>
				<p>Reference number: <xsl:value-of select="@ref"/></p>
				<p>Exam number: <xsl:value-of select="examId"/></p>
				<p>Contestant number: <xsl:value-of select="contestantId"/></p>
				<p>Digital signature: <xsl:value-of select="digitalSignature"/></p>
				<p>Score: <xsl:value-of select="score"/></p>
				<p>Band: <xsl:value-of select="band"/></p>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
