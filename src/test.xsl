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
          <xsl:when test="@k='k'">
            <xsl:call-template name="work-heading-title" />
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="work-itemshadow" />
          </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="work-bottom-text">
        bottom-text...
    </xsl:template>

    <xsl:template name="work-itemshadow">
        item-shadow...
    </xsl:template>

    <xsl:template name="work-bottom-text">
        bottom-text...
    </xsl:template>

    <xsl:template name="work-heading-title">
        heading-title...
    </xsl:template>
</xsl:transform>
