<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile JP_Observation_Common
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:specimen) &gt;= 1">specimen: minimum cardinality of 'specimen' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="not(parent::f:contained and f:contained)">リソースが別のリソースに含まれている場合、ネストされたリソースを含めてはなりません / If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">リソースが別のリソースに含まれている場合、それはリソースの他の場所から参照されるか、含有リソースを参照するものとします / If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">リソースが別のリソースに含まれている場合、meta.versionidまたはmeta.lastupdatedを持たないものとします / If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">別のリソースにリソースが含まれている場合、セキュリティラベルはありません / If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">リソースには、堅牢な管理のための叙述(Narative)が必要です / A resource should have narrative for robust management (inherited)</sch:assert>
      <sch:assert test="not(exists(f:dataAbsentReason)) or (not(exists(*[starts-with(local-name(.), 'value')])))">databsentrasonは、観察.value [x]が存在しない場合にのみ存在するものとします / dataAbsentReason SHALL only be present if Observation.value[x] is not present (inherited)</sch:assert>
      <sch:assert test="not(f:*[starts-with(local-name(.), 'value')] and (for $coding in f:code/f:coding return f:component/f:code/f:coding[f:code/@value=$coding/f:code/@value] [f:system/@value=$coding/f:system/@value]))">visserveration.codeがvisserveration.component.codeと同じ場合、コードに関連付けられている値要素が存在しないでください / If Observation.code is the same as an Observation.component.code then the value element associated with the code SHALL NOT be present (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.meta</sch:title>
    <sch:rule context="f:Observation/f:meta">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.implicitRules</sch:title>
    <sch:rule context="f:Observation/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.language</sch:title>
    <sch:rule context="f:Observation/f:language">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.text</sch:title>
    <sch:rule context="f:Observation/f:text">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.extension</sch:title>
    <sch:rule context="f:Observation/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.modifierExtension</sch:title>
    <sch:rule context="f:Observation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:identifier</sch:title>
    <sch:rule context="f:Observation/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier</sch:title>
    <sch:rule context="f:Observation/f:identifier">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.extension</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.use</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:use">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.type</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:type">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.system</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:system">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.value</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:value">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.period</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:period">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.identifier.assigner</sch:title>
    <sch:rule context="f:Observation/f:identifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.basedOn</sch:title>
    <sch:rule context="f:Observation/f:basedOn">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.partOf</sch:title>
    <sch:rule context="f:Observation/f:partOf">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.status</sch:title>
    <sch:rule context="f:Observation/f:status">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:category</sch:title>
    <sch:rule context="f:Observation/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.category</sch:title>
    <sch:rule context="f:Observation/f:category">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.category.extension</sch:title>
    <sch:rule context="f:Observation/f:category/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.category.coding</sch:title>
    <sch:rule context="f:Observation/f:category/f:coding">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.category.text</sch:title>
    <sch:rule context="f:Observation/f:category/f:text">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:code</sch:title>
    <sch:rule context="f:Observation/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code</sch:title>
    <sch:rule context="f:Observation/f:code">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.extension</sch:title>
    <sch:rule context="f:Observation/f:code/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:code/f:coding</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.extension</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.system</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.version</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.code</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.display</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.coding.userSelected</sch:title>
    <sch:rule context="f:Observation/f:code/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.code.text</sch:title>
    <sch:rule context="f:Observation/f:code/f:text">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.subject</sch:title>
    <sch:rule context="f:Observation/f:subject">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.focus</sch:title>
    <sch:rule context="f:Observation/f:focus">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.encounter</sch:title>
    <sch:rule context="f:Observation/f:encounter">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.effective[x] 1</sch:title>
    <sch:rule context="f:Observation/f:effective[x]">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.issued</sch:title>
    <sch:rule context="f:Observation/f:issued">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.performer</sch:title>
    <sch:rule context="f:Observation/f:performer">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.value[x] 1</sch:title>
    <sch:rule context="f:Observation/f:value[x]">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.dataAbsentReason</sch:title>
    <sch:rule context="f:Observation/f:dataAbsentReason">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.interpretation</sch:title>
    <sch:rule context="f:Observation/f:interpretation">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:note</sch:title>
    <sch:rule context="f:Observation/f:note">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:author[x]) &lt;= 1">author[x]: maximum cardinality of 'author[x]' is 1</sch:assert>
      <sch:assert test="count(f:time) &lt;= 1">time: maximum cardinality of 'time' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.note</sch:title>
    <sch:rule context="f:Observation/f:note">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.note.extension</sch:title>
    <sch:rule context="f:Observation/f:note/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.note.author[x] 1</sch:title>
    <sch:rule context="f:Observation/f:note/f:author[x]">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.note.time</sch:title>
    <sch:rule context="f:Observation/f:note/f:time">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.note.text</sch:title>
    <sch:rule context="f:Observation/f:note/f:text">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.bodySite</sch:title>
    <sch:rule context="f:Observation/f:bodySite">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.method</sch:title>
    <sch:rule context="f:Observation/f:method">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.specimen</sch:title>
    <sch:rule context="f:Observation/f:specimen">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.device</sch:title>
    <sch:rule context="f:Observation/f:device">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange</sch:title>
    <sch:rule context="f:Observation/f:referenceRange">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(exists(f:low) or exists(f:high)or exists(f:text))">少なくとも低いまたは高またはテキストが必要です / Must have at least a low or a high or text (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.extension</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.modifierExtension</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.low</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:low">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.high</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:high">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.type</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:type">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.appliesTo</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:appliesTo">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.age</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:age">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.referenceRange.text</sch:title>
    <sch:rule context="f:Observation/f:referenceRange/f:text">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.hasMember</sch:title>
    <sch:rule context="f:Observation/f:hasMember">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.derivedFrom</sch:title>
    <sch:rule context="f:Observation/f:derivedFrom">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component</sch:title>
    <sch:rule context="f:Observation/f:component">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.extension</sch:title>
    <sch:rule context="f:Observation/f:component/f:extension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.modifierExtension</sch:title>
    <sch:rule context="f:Observation/f:component/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">両方ではなく、拡張または値[x]が必要です / Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.code</sch:title>
    <sch:rule context="f:Observation/f:component/f:code">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.value[x] 1</sch:title>
    <sch:rule context="f:Observation/f:component/f:value[x]">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.dataAbsentReason</sch:title>
    <sch:rule context="f:Observation/f:component/f:dataAbsentReason">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.interpretation</sch:title>
    <sch:rule context="f:Observation/f:component/f:interpretation">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Observation.component.referenceRange</sch:title>
    <sch:rule context="f:Observation/f:component/f:referenceRange">
      <sch:assert test="@value|f:*|h:div">すべてのFHIR要素には、@valueまたは子供が必要です / All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
