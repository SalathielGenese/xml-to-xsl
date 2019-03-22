<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform
version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output
        method="html"
        indent="yes"
        encoding="UTF-8"
        omit-xml-declaration="yes"
        doctype-public="XSLT-compat"
    />

    <xsl:template match="/">
        <section id="portfolio_top" class="bglight">
            <div class="container">
                <div id="portfolio-measonry" class="cbp border-portfolio">
                    <xsl:apply-templates/>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="work">
        <xsl:choose>
            <xsl:when test="@kind='cells'">
                <xsl:call-template name="work-cells" />
            </xsl:when>
            <xsl:when test="@kind='text_wrap'">
                <xsl:call-template name="text-wrap" />
            </xsl:when>
            <xsl:otherwise>
                normal...
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="work-cells">
        cells...
    </xsl:template>

    <xsl:template name="text-wrap">
        text...
    </xsl:template>
</xsl:transform>
