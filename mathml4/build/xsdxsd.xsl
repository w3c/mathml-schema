<xsl:stylesheet version="2.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xs="http://www.w3.org/2001/XMLSchema"
		>

<xsl:strip-space elements="*"/>
<xsl:output indent="yes"/>

<xsl:template match="@*|*">
  <xsl:copy>
    <xsl:apply-templates select="@*,node()"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="xs:group[@name='ContExp']/xs:choice/xs:choice">
  <xsl:text>&#10;</xsl:text>
  <xsl:comment>Ambiguous content model altered (ContExp)</xsl:comment>
  <xsl:text>&#10;         </xsl:text>
  <xs:element ref="m:apply"/>
  <xs:element ref="m:bind"/>
  <xs:element ref="m:ci"/>
  <xs:element ref="m:cn"/>
  <xs:element ref="m:csymbol"/>
  <xs:element ref="m:cbytes"/>
  <xs:element ref="m:cerror"/>
  <xs:element ref="m:cs"/>
  <xs:element ref="m:share"/>
</xsl:template>


<xsl:template match="xs:complexType[@name='apply.content']">
  <xsl:comment>Ambiguous content model altered (apply.content)</xsl:comment>
  <xsl:text>&#10;</xsl:text>
  <xs:complexType name="apply.content">
<!--    <xs:choice>
      <xs:group maxOccurs="unbounded" ref="m:ContExp"/>
-->      <xs:sequence>
        <xs:group ref="m:ContExp"/>
        <xs:group ref="m:BvarQ"/>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="m:Qualifier"/>
        <xs:group minOccurs="0" maxOccurs="unbounded" ref="m:ContExp"/>
      </xs:sequence>
  <!--  </xs:choice>-->
  </xs:complexType>
</xsl:template>

<xsl:template match="xs:group[@name='DomainQ']//xs:element[@ref='m:interval']">
  <xsl:comment>Ambiguous content model altered (interval)</xsl:comment>
</xsl:template>

<xsl:template match="xs:group[@name='unary-arith.class']//xs:element[@ref='m:minus']">
  <xsl:comment>Ambiguous content model altered (minus)</xsl:comment>
</xsl:template>

<xsl:template match="xs:group[@name='unary-arith.class']//xs:element[@ref='m:root']">
  <xsl:comment>Ambiguous content model altered (root)</xsl:comment>
</xsl:template>

<xsl:template match="xs:attributeGroup[@name='NonMathMLAtt']"/>
<xsl:template match="xs:attributeGroup[@ref='m:NonMathMLAtt']"/>
<xsl:template match="xs:attributeGroup[@name=('CommonAtt','MathMLPGlobalAttributes')]">
 <xsl:copy>
  <xsl:copy-of select="@*"/>
  <xsl:apply-templates/>
        <xs:anyAttribute namespace="##other" processContents="skip"/>
 </xsl:copy>
</xsl:template>

<xsl:template match="xs:complexType[@name='annotation-xml.model']">
 <xs:complexType name="annotation-xml.model">
  <xsl:comment>content model altered for libxml (annotation-xml)</xsl:comment>
  <xs:sequence>
   <xs:any processContents="lax"/>    
  </xs:sequence>
 </xs:complexType>
</xsl:template>

<xsl:template match="@type[.='annotation-xml']">
 <xsl:attribute name="type" select="'m:annotation-xml'"/>
</xsl:template>

</xsl:stylesheet>
