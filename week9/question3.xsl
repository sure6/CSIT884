<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml" indent="yes" encoding="UTF-8" />
	<xsl:template match="/audit">
		<html>
			<head>
				<title>xslt example</title>
			</head>
			<body>
				<h2>Enrolment statistics</h2>
				<p><b>Campus: </b><xsl:value-of select="@campus"/></p>
				<p><b>Year: </b><xsl:value-of select="@year"/></p>
				<p><b>Session: </b><xsl:value-of select="@session"/></p>
				
				<table border="1px">
					<tr>
							<th>ID</th>
							<th>Subject</th>
							<th>Enrol</th>
							<th>Withdrawn</th>
						</tr>
					<xsl:for-each select="subject">
<!--						<xsl:sort select="@sid" data-type="number"/>-->
						<tr>
							<td><xsl:value-of select="@sid"/></td>
							<td><xsl:value-of select="code"/>
<!--							<xsl:text>:</xsl:text>-->
							:
							<xsl:value-of select="title" />
							</td>
							<xsl:for-each select="statistics">
								<td><xsl:value-of select="enrol" /></td>
								<td><xsl:value-of select="withdrawn" /></td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
