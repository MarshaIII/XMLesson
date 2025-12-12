<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" encoding="UTF-8"/>

<xsl:key name="TeacherRead" match="teachers" use="teacher"/>
<xsl:key name="IncludesSmth" match="keywords" use="keyword"/>

<xsl:template match="/">
<html>
<body>

<h1>Курсы, которые читает Борисов И.О.</h1>
<ul>
    <xsl:for-each select="key('TeacherRead', 'Борисов И.О.')">
    <li>
        <xsl:value-of select="../title"/>
    </li>
    </xsl:for-each>
</ul>
<h2>Курсы, которые содержат XML</h2>
<ul>
    <xsl:for-each select="key('IncludesSmth', 'XML')">
        <li>
            <xsl:value-of select="../title"/>
        </li>
    </xsl:for-each>
</ul>

<h3>Курсы с XSLT, которые читает Борисов И.О.</h3>
<ul>
    <xsl:for-each select="key('IncludesSmth', 'XSLT')[../teachers/teacher = 'Борисов И.О.']">
            <li>
                <xsl:value-of select="../title"/>
            </li>
    </xsl:for-each>
</ul>

</body>
</html>
</xsl:template>
</xsl:stylesheet>