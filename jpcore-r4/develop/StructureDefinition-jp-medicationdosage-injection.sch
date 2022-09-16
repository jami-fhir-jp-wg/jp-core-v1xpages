<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile JP_MedicationDosageBase
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Dosage</sch:title>
    <sch:rule context="f:Dosage">
      <sch:assert test="count(f:extension[@url = 'http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_PeriodOfUse']) &lt;= 0">extension with URL = 'http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_PeriodOfUse': maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration']) &lt;= 0">extension with URL = 'http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DosageInstruction_UsageDuration': maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage</sch:title>
    <sch:rule context="f:Dosage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.extension</sch:title>
    <sch:rule context="f:Dosage/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.modifierExtension</sch:title>
    <sch:rule context="f:Dosage/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.sequence</sch:title>
    <sch:rule context="f:Dosage/f:sequence">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.text</sch:title>
    <sch:rule context="f:Dosage/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.additionalInstruction</sch:title>
    <sch:rule context="f:Dosage/f:additionalInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.patientInstruction</sch:title>
    <sch:rule context="f:Dosage/f:patientInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:timing</sch:title>
    <sch:rule context="f:Dosage/f:timing">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:repeat) &lt;= 1">repeat: maximum cardinality of 'repeat' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing</sch:title>
    <sch:rule context="f:Dosage/f:timing">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.extension</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.modifierExtension</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.event</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:event">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Dosage/f:timing/f:repeat</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:bounds[x]) &lt;= 1">bounds[x]: maximum cardinality of 'bounds[x]' is 1</sch:assert>
      <sch:assert test="count(f:count) &lt;= 1">count: maximum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:countMax) &lt;= 1">countMax: maximum cardinality of 'countMax' is 1</sch:assert>
      <sch:assert test="count(f:duration) &lt;= 1">duration: maximum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:durationMax) &lt;= 1">durationMax: maximum cardinality of 'durationMax' is 1</sch:assert>
      <sch:assert test="count(f:durationUnit) &lt;= 1">durationUnit: maximum cardinality of 'durationUnit' is 1</sch:assert>
      <sch:assert test="count(f:frequency) &lt;= 1">frequency: maximum cardinality of 'frequency' is 1</sch:assert>
      <sch:assert test="count(f:frequencyMax) &lt;= 1">frequencyMax: maximum cardinality of 'frequencyMax' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:periodMax) &lt;= 1">periodMax: maximum cardinality of 'periodMax' is 1</sch:assert>
      <sch:assert test="count(f:periodUnit) &lt;= 1">periodUnit: maximum cardinality of 'periodUnit' is 1</sch:assert>
      <sch:assert test="count(f:offset) &lt;= 1">offset: maximum cardinality of 'offset' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:duration)) or exists(f:durationUnit)">if there's a duration, there needs to be duration units (inherited)</sch:assert>
      <sch:assert test="not(exists(f:period)) or exists(f:periodUnit)">if there's a period, there needs to be period units (inherited)</sch:assert>
      <sch:assert test="f:duration/@value &gt;= 0 or not(f:duration/@value)">duration SHALL be a non-negative value (inherited)</sch:assert>
      <sch:assert test="f:period/@value &gt;= 0 or not(f:period/@value)">period SHALL be a non-negative value (inherited)</sch:assert>
      <sch:assert test="not(exists(f:periodMax)) or exists(f:period)">If there's a periodMax, there must be a period (inherited)</sch:assert>
      <sch:assert test="not(exists(f:durationMax)) or exists(f:duration)">If there's a durationMax, there must be a duration (inherited)</sch:assert>
      <sch:assert test="not(exists(f:countMax)) or exists(f:count)">If there's a countMax, there must be a count (inherited)</sch:assert>
      <sch:assert test="not(exists(f:offset)) or exists(f:when)">If there's an offset, there must be a when (and not C, CM, CD, CV) (inherited)</sch:assert>
      <sch:assert test="not(exists(f:timeOfDay)) or not(exists(f:when))">If there's a timeOfDay, there cannot be a when, or vice versa (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.extension</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.bounds[x] 1</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:bounds[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.count</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:count">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.countMax</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:countMax">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.duration</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:duration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.durationMax</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:durationMax">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.durationUnit</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:durationUnit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.frequency</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:frequency">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.frequencyMax</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:frequencyMax">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.period</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.periodMax</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:periodMax">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.periodUnit</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:periodUnit">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.dayOfWeek</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:dayOfWeek">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.timeOfDay</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:timeOfDay">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.when</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:when">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.repeat.offset</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:repeat/f:offset">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.timing.code</sch:title>
    <sch:rule context="f:Dosage/f:timing/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.asNeeded[x] 1</sch:title>
    <sch:rule context="f:Dosage/f:asNeeded[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.site</sch:title>
    <sch:rule context="f:Dosage/f:site">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.route</sch:title>
    <sch:rule context="f:Dosage/f:route">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method</sch:title>
    <sch:rule context="f:Dosage/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.extension</sch:title>
    <sch:rule context="f:Dosage/f:method/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.extension</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.system</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.version</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.code</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.display</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.coding.userSelected</sch:title>
    <sch:rule context="f:Dosage/f:method/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.method.text</sch:title>
    <sch:rule context="f:Dosage/f:method/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.doseAndRate</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.doseAndRate.extension</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.doseAndRate.type</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.doseAndRate.dose[x] 1</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate/f:dose[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:code)) or exists(f:system)">If a code for the unit is present, the system SHALL also be present (inherited)</sch:assert>
      <sch:assert test="not(exists(f:comparator))">The comparator is not used on a SimpleQuantity (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:low/f:value/@value)) or not(exists(f:high/f:value/@value)) or (number(f:low/f:value/@value) &lt;= number(f:high/f:value/@value))">If present, low SHALL have a lower value than high (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.doseAndRate.rate[x] 1</sch:title>
    <sch:rule context="f:Dosage/f:doseAndRate/f:rate[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(count(f:numerator) = count(f:denominator)) and ((count(f:numerator) &gt; 0) or (count(f:extension) &gt; 0))">Numerator and denominator SHALL both be present, or both are absent. If both are absent, there SHALL be some extension present (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:low/f:value/@value)) or not(exists(f:high/f:value/@value)) or (number(f:low/f:value/@value) &lt;= number(f:high/f:value/@value))">If present, low SHALL have a lower value than high (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.maxDosePerPeriod</sch:title>
    <sch:rule context="f:Dosage/f:maxDosePerPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(count(f:numerator) = count(f:denominator)) and ((count(f:numerator) &gt; 0) or (count(f:extension) &gt; 0))">Numerator and denominator SHALL both be present, or both are absent. If both are absent, there SHALL be some extension present (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.maxDosePerAdministration</sch:title>
    <sch:rule context="f:Dosage/f:maxDosePerAdministration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:code)) or exists(f:system)">If a code for the unit is present, the system SHALL also be present (inherited)</sch:assert>
      <sch:assert test="not(exists(f:comparator))">The comparator is not used on a SimpleQuantity (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Dosage.maxDosePerLifetime</sch:title>
    <sch:rule context="f:Dosage/f:maxDosePerLifetime">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(exists(f:code)) or exists(f:system)">If a code for the unit is present, the system SHALL also be present (inherited)</sch:assert>
      <sch:assert test="not(exists(f:comparator))">The comparator is not used on a SimpleQuantity (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
