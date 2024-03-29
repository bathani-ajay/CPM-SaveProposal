<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/tagic/gc/cpm/xslt/cpm_res_format_map.map" md5sum="4240b29271bf31645dcf596e24942522" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		cpm_res_format_map.map
*   Map declaration(s):	cpm_res_format_map
*   Input file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-GcCpm%257DcpmSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-AuditLibrary%252FRequestFormatting%257DcpmRequestFormatResponseMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-GcCpm%257DcpmSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-AuditLibrary%252FRequestFormatting%257DcpmRequestFormatResponseMsg/xpath%3D%252F/smo.xsd
*
*   Note: Do not modify the contents of this file as it is overwritten
*         each time the mapping model is updated.
*****************************************************************************
-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xltxe="http://www.ibm.com/xmlns/prod/xltxe-j"
    xmlns:date="http://exslt.org/dates-and-times"
    xmlns:str="http://exslt.org/strings"
    xmlns:exsl="http://exslt.org/common"
    xmlns:set="http://exslt.org/sets"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://exslt.org/math"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xs4xs="http://www.w3.org/2001/XMLSchema"
    xmlns:io7="http://Impl-GcCpm"
    xmlns:io6="http://www.ibm.com/xmlns/prod/websphere/http/sca/6.1.0"
    xmlns:io9="http://Impl-AuditLibrary/RequestFormatting"
    xmlns:io8="wsdl.http://Impl-AuditLibrary/RequestFormatting"
    xmlns:io="http://www.w3.org/2005/08/addressing"
    xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io4="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:map="http://Impl-CpmSaveProposal/com/tagic/gc/cpm/xslt/cpm_res_format_map"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="date str exsl set fn math map xltxe msl"
    version="2.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io4:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:cpm_res_format_map2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io4:smo" mode="map:cpm_res_format_map"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template match="io4:smo"  mode="map:cpm_res_format_map">
    <io4:smo>
      <context>
        <!-- a join transform -->
        <xsl:variable name="shared" select="context/shared"/>
        <xsl:variable name="cpmReqOutput" select="body/io9:cpmRequestFormatResponse/cpmReqOutput"/>
        <xsl:call-template name="localShared_et_alToShared_833882726">
          <xsl:with-param name="shared" select="$shared"/>
          <xsl:with-param name="cpmReqOutput" select="$cpmReqOutput"/>
        </xsl:call-template>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'io8:cpmRequestFormatResponseMsg'"/>
        </xsl:attribute>
        <io9:cpmRequestFormatResponse>
          <!-- a simple data mapping: "body/io9:cpmRequestFormatResponse/cpmReqOutput"(string) to "cpmReqOutput"(string) -->
          <xsl:choose>
            <xsl:when test="normalize-space(body/io9:cpmRequestFormatResponse/cpmReqOutput)">
              <xsl:element name="cpmReqOutput">
                <xsl:value-of select="body/io9:cpmRequestFormatResponse/cpmReqOutput"/>
              </xsl:element>
            </xsl:when>
            <xsl:otherwise>
              <cpmReqOutput xsi:nil="true"/>
            </xsl:otherwise>
          </xsl:choose>
        </io9:cpmRequestFormatResponse>
      </body>
    </io4:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template name="map:cpm_res_format_map2">
    <xsl:param name="smo"/>
    <context>
      <!-- a join transform -->
      <xsl:variable name="shared" select="$smo/context/shared"/>
      <xsl:variable name="cpmReqOutput" select="$smo/body/io9:cpmRequestFormatResponse/cpmReqOutput"/>
      <xsl:call-template name="localShared_et_alToShared_833882726">
        <xsl:with-param name="shared" select="$shared"/>
        <xsl:with-param name="cpmReqOutput" select="$cpmReqOutput"/>
      </xsl:call-template>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io8:cpmRequestFormatResponseMsg'"/>
      </xsl:attribute>
      <io9:cpmRequestFormatResponse>
        <!-- a simple data mapping: "$smo/body/io9:cpmRequestFormatResponse/cpmReqOutput"(string) to "cpmReqOutput"(string) -->
        <xsl:choose>
          <xsl:when test="normalize-space($smo/body/io9:cpmRequestFormatResponse/cpmReqOutput)">
            <xsl:element name="cpmReqOutput">
              <xsl:value-of select="$smo/body/io9:cpmRequestFormatResponse/cpmReqOutput"/>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <cpmReqOutput xsi:nil="true"/>
          </xsl:otherwise>
        </xsl:choose>
      </io9:cpmRequestFormatResponse>
    </body>
  </xsl:template>

  <!-- This rule represents a join transform.  -->
  <xsl:template name="localShared_et_alToShared_833882726">
    <xsl:param name="shared"/>
    <xsl:param name="cpmReqOutput"/>
    <shared>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'io7:cpmSharedBO'"/>
      </xsl:attribute>
      <!-- a simple data mapping: "$shared/auditPrimaryKey"(int) to "auditPrimaryKey"(int) -->
      <xsl:if test="$shared/auditPrimaryKey">
        <auditPrimaryKey>
          <xsl:value-of select="$shared/auditPrimaryKey"/>
        </auditPrimaryKey>
      </xsl:if>
      <!-- a simple data mapping: "$shared/itTicketNumber"(string) to "itTicketNumber"(string) -->
      <xsl:if test="$shared/itTicketNumber">
        <itTicketNumber>
          <xsl:value-of select="$shared/itTicketNumber"/>
        </itTicketNumber>
      </xsl:if>
      <!-- a simple data mapping: "$shared/loggingModule"(string) to "loggingModule"(string) -->
      <xsl:if test="$shared/loggingModule">
        <loggingModule>
          <xsl:value-of select="$shared/loggingModule"/>
        </loggingModule>
      </xsl:if>
      <!-- a simple data mapping: "$cpmReqOutput"(string) to "traceLog"(string) -->
      <xsl:if test="$cpmReqOutput">
        <traceLog>
          <xsl:value-of select="$cpmReqOutput/."/>
        </traceLog>
      </xsl:if>
    </shared>
  </xsl:template>

  <!-- *****************    Utility Templates    ******************  -->
  <!-- copy the namespace declarations from the source to the target -->
  <xsl:template name="copyNamespaceDeclarations">
    <xsl:param name="root"/>
    <xsl:for-each select="$root/namespace::node()[not(name() = '')]">
      <xsl:copy/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
