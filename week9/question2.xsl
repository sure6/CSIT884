<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	<xsl:template match="/result">
		<html>
			<head>
				<title>xslt example</title>
				<style>
					td{
						border:1px dashed black;
					}
					.keyOf{
						font-size:12px;
						color: gray;
					}
					.valueOf{
						font-size: 20px;
						color: red;
					}
				</style>
			</head>
			<body>
				<h2>Exam result</h2>
				<table style="border: 1px solid;" cellspacing="20px" cellpadding="10px">
					<tr>
						<td class="keyOf">Reference number</td>
						<td class="valueOf"><xsl:value-of select="@ref"/></td>
					</tr>
					<tr>
						<td class="keyOf">Exam number</td>
						<td class="valueOf"><xsl:value-of select="examId"/></td>
					</tr>
					<tr>
						<td class="keyOf">Contestant number</td>
						<td class="valueOf"><xsl:value-of select="contestantId"/></td>
					</tr>
					<tr>
						<td class="keyOf">Digital signature</td>
						<td class="valueOf"><xsl:value-of select="digitalSignature"/></td>
					</tr>
					<tr>
						<td class="keyOf">Score</td>
						<td class="valueOf"><xsl:value-of select="score"/></td>
					</tr>
					<tr>
						<td class="keyOf">Band</td>
						<td class="valueOf"><xsl:value-of select="band"/></td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
