<?xml version="1.0" encoding="UTF-8"?>
<!-- @generated mapFile="com/tagic/gc/cpm/xslt/cpm_req_format_map.map" md5sum="554f0a95bd061edd8ef137738338ea69" version="8.0.501" -->
<!--
*****************************************************************************
*   This file has been generated by the IBM Graphical Data Mapping Editor.
*   Version 8.0.5.0
*
*   Mapping file:		cpm_req_format_map.map
*   Map declaration(s):	cpm_req_format_map
*   Input file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-GcCpm%257DcpmSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-GcCpmLibrary%252FGCIntegrationCPM%257DcpmGCProposalSyncRequestMsg/xpath%3D%252F/smo.xsd
*   Output file(s):		smo://smo/name%3Dwsdl-primary/sharedContext%3D%257Bhttp%253A%252F%252FImpl-GcCpm%257DcpmSharedBO/message%3D%257Bhttp%253A%252F%252FImpl-AuditLibrary%252FRequestFormatting%257DcpmRequestFormatRequestMsg/xpath%3D%252F/smo.xsd
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
    xmlns:in="wsdl.http://Impl-GcCpmLibrary/GCIntegrationCPM"
    xmlns:io="http://www.w3.org/2005/08/addressing"
    xmlns:io3="http://schemas.xmlsoap.org/ws/2004/08/addressing"
    xmlns:in2="http://Impl-GcCpmLibrary/GCIntegrationCPM"
    xmlns:io2="http://www.w3.org/2003/05/soap-envelope"
    xmlns:io5="http://www.ibm.com/xmlns/prod/websphere/mq/sca/6.0.0"
    xmlns:io4="http://www.ibm.com/websphere/sibx/smo/v6.0.1"
    xmlns:in3="http://Impl-GcCpmLibrary"
    xmlns:out2="http://Impl-AuditLibrary/RequestFormatting"
    xmlns:out="wsdl.http://Impl-AuditLibrary/RequestFormatting"
    xmlns:Transform="com.tagic.hnb.Transform"
    xmlns:map="http://Impl-CpmSaveProposal/com/tagic/gc/cpm/xslt/cpm_req_format_map"
    xmlns:msl="http://www.ibm.com/xmlmap"
    exclude-result-prefixes="date str exsl set fn math Transform map xltxe msl"
    version="2.0">
  <xsl:output method="xml" encoding="UTF-8" indent="no"/>
  <xltxe:java-extension prefix="Transform" class="com.tagic.hnb.Transform"/>

  <!-- root wrapper template  -->
  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="msl:datamap">
        <msl:datamap>
          <xsl:element name="dataObject">
            <xsl:attribute name="xsi:type">
              <xsl:value-of select="'io4:ServiceMessageObject'"/>
            </xsl:attribute>
            <xsl:call-template name="map:cpm_req_format_map2">
              <xsl:with-param name="smo" select="msl:datamap/dataObject[1]"/>
            </xsl:call-template>
          </xsl:element>
        </msl:datamap>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="io4:smo" mode="map:cpm_req_format_map"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- This rule represents an element mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template match="io4:smo"  mode="map:cpm_req_format_map">
    <io4:smo>
      <context>
        <!-- a structural mapping: "context/shared"(cpmSharedBO) to "shared"(cpmSharedBO) -->
        <xsl:if test="context/shared">
          <xsl:copy-of select="context/shared" copy-namespaces="yes"/>
        </xsl:if>
      </context>
      <body>
        <xsl:attribute name="xsi:type">
          <xsl:value-of select="'out:cpmRequestFormatRequestMsg'"/>
        </xsl:attribute>
        <out2:cpmRequestFormat>
          <!-- a simple data mapping: "body/in2:cpmGCProposalSync/cpmGCRequest"(CPMParentBO) to "cpmReqInput"(string) -->
          <xsl:element name="cpmReqInput">
            <!-- variables for custom code -->
            <xsl:variable name="cpmGCRequest1" select="body/in2:cpmGCProposalSync/cpmGCRequest"/>
            <xsl:value-of select="Transform:transformXMLToString($cpmGCRequest1)"/>
          </xsl:element>
        </out2:cpmRequestFormat>
      </body>
    </io4:smo>
  </xsl:template>

  <!-- This rule represents a type mapping: "io4:smo" to "io4:smo".  -->
  <xsl:template name="map:cpm_req_format_map2">
    <xsl:param name="smo"/>
    <context>
      <!-- a structural mapping: "$smo/context/shared"(cpmSharedBO) to "shared"(cpmSharedBO) -->
      <xsl:if test="$smo/context/shared">
        <xsl:copy-of select="$smo/context/shared" copy-namespaces="yes"/>
      </xsl:if>
    </context>
    <body>
      <xsl:attribute name="xsi:type">
        <xsl:value-of select="'out:cpmRequestFormatRequestMsg'"/>
      </xsl:attribute>
      <out2:cpmRequestFormat>
        <!-- a simple data mapping: "$smo/body/in2:cpmGCProposalSync/cpmGCRequest"(CPMParentBO) to "cpmReqInput"(string) -->
        <xsl:element name="cpmReqInput">
          <!-- variables for custom code -->
          <xsl:variable name="cpmGCRequest1" select="$smo/body/in2:cpmGCProposalSync/cpmGCRequest"/>
          <xsl:value-of select="Transform:transformXMLToString($cpmGCRequest1)"/>
        </xsl:element>
      </out2:cpmRequestFormat>
    </body>
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