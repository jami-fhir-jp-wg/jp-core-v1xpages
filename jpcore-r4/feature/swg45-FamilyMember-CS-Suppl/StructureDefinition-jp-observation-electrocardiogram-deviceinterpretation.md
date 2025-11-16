# JP Core Observation Electrocardiogram Device Interpretation Extention - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram Device Interpretation Extention**

## Extension: JP Core Observation Electrocardiogram Device Interpretation Extention 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_DeviceInterpretation
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_Electrocardiogram_DeviceInterpretation
* **項目**: *Title*
  * **内容**: JP Core Observation Electrocardiogram Device Interpretation Extention
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

心電図検査で測定された結果に対しての機械的に判定された所見、解釈の有無

心電図検査で測定された結果についての所見や解釈が機械的に判定されたものかどうかを示すために用いられる。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Observation Electrocardiogram Profile](StructureDefinition-jp-observation-electrocardiogram.md)
* Examples for this Extension: [Observation/jp-observation-electrocardiogram-example-1](Observation-jp-observation-electrocardiogram-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-electrocardiogram-deviceinterpretation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-electrocardiogram-deviceinterpretation.csv), [Excel](StructureDefinition-jp-observation-electrocardiogram-deviceinterpretation.xlsx), [Schematron](StructureDefinition-jp-observation-electrocardiogram-deviceinterpretation.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-electrocardiogram-deviceinterpretation",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_DeviceInterpretation",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_Electrocardiogram_DeviceInterpretation",
  "title" : "JP Core Observation Electrocardiogram Device Interpretation Extention",
  "status" : "active",
  "date" : "2024-12-30",
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
  "description" : "心電図検査で測定された結果に対しての機械的に判定された所見、解釈の有無",
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
  "purpose" : "心電図検査で測定された結果についての所見や解釈が機械的に判定されたものかどうかを示すために用いられる。",
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
      "expression" : "Observation"
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
        "short" : "機械判定された所見・解釈の有無",
        "definition" : "心電図検査の所見が機械的に判定されたものであるかどうかを示す"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_DeviceInterpretation"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "機械判定所見の有無",
        "definition" : "心電図検査が機械的に判定されたものであるかどうかを示す",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
