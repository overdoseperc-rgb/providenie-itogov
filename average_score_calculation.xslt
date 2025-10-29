<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <!-- Шаблон для обработки студентов -->
    <xsl:template match="/students">
        <results>
            <xsl:for-each select="student">
                <student>
                    <name>
                        <xsl:value-of select="name"/>
                    </name>
                    <average_score>
                        <!-- Считаем средний балл -->
                        <xsl:value-of select="format-number(sum(grades/grade) div count(grades/grade), '0.0')"/>
                    </average_score>
                </student>
            </xsl:for-each>
        </results>
    </xsl:template>
</xsl:stylesheet>
