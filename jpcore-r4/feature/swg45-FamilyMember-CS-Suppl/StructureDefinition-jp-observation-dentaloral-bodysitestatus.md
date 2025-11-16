# JP Core Observation DentalOral Body Site Status Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Body Site Status Extension**

## Extension: JP Core Observation DentalOral Body Site Status Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodySiteStatus
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_DentalOral_BodySiteStatus
* **項目**: *Title*
  * **内容**: JP Core Observation DentalOral Body Site Status Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

歯の状態を格納するための拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md) and [JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md)
* Examples for this Extension: [Observation/jp-observation-dentaloral-ecs-example](Observation-jp-observation-dentaloral-ecs-example.md), [Observation/jp-observation-dentaloral-toothexistence-example-1](Observation-jp-observation-dentaloral-toothexistence-example-1.md), [Observation/jp-observation-dentaloral-toothexistence-example-2](Observation-jp-observation-dentaloral-toothexistence-example-2.md), [Observation/jp-observation-dentaloral-toothexistence-example-3](Observation-jp-observation-dentaloral-toothexistence-example-3.md)...Show 3 more,[Observation/jp-observation-dentaloral-toothexistence-example-4](Observation-jp-observation-dentaloral-toothexistence-example-4.md),[Observation/jp-observation-dentaloral-toothexistence-example-5](Observation-jp-observation-dentaloral-toothexistence-example-5.md)and[Observation/jp-observation-dentaloral-toothexistence-example-6](Observation-jp-observation-dentaloral-toothexistence-example-6.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-dentaloral-bodysitestatus)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-dentaloral-bodysitestatus.csv), [Excel](StructureDefinition-jp-observation-dentaloral-bodysitestatus.xlsx), [Schematron](StructureDefinition-jp-observation-dentaloral-bodysitestatus.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-dentaloral-bodysitestatus",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodySiteStatus",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_DentalOral_BodySiteStatus",
  "title" : "JP Core Observation DentalOral Body Site Status Extension",
  "status" : "active",
  "date" : "2025-07-30",
  "publisher" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
  "contact" : [
    {
      "name" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://jpfhir.jp"
        },
        {
          "system" : "email",
          "value" : "office@hlfhir.jp"
        }
      ]
    }
  ],
  "description" : "歯の状態を格納するための拡張",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "JP",
          "display" : "Japan"
        }
      ]
    }
  ],
  "copyright" : "Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation.bodySite"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "歯の状態",
        "definition" : "歯の状態を格納するための拡張。例：『インプラント』、『その他の生体構造体』"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodySiteStatus"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DentalBodySiteStatus_VS"
        }
      }
    ]
  }
}

```
