<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:ns0="saibot.airport/services/utility/reference" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions"
                xmlns:refData="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../Schemas/AirportService.xsd"/>
        <oracle-xsl-mapper:rootElement name="findAirportsRequestMessage"
                                       namespace="saibot.airport/services/utility/reference"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../Resources/QueryAirportsDB_table.xsd"/>
        <oracle-xsl-mapper:rootElement name="QueryAirportsDBSelect_pIATACode_pCountryCode_pAirportNameInputParameters"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/QueryAirportsDB"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.2.0.0(XSLT Build 130601.2155.4487) AT [SAT DEC 28 13:40:58 CET 2013].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:QueryAirportsDBSelect_pIATACode_pCountryCode_pAirportNameInputParameters>
      <tns:pIATACode>
        <xsl:value-of select="/ns0:findAirportsRequestMessage/ns0:IATACode"/>
      </tns:pIATACode>
      <tns:pCountryCode>
        <xsl:value-of select="/ns0:findAirportsRequestMessage/ns0:CountryCode"/>
      </tns:pCountryCode>
      <tns:pAirportName>
        <xsl:value-of select="/ns0:findAirportsRequestMessage/ns0:Name"/>
      </tns:pAirportName>
    </tns:QueryAirportsDBSelect_pIATACode_pCountryCode_pAirportNameInputParameters>
  </xsl:template>
</xsl:stylesheet>
