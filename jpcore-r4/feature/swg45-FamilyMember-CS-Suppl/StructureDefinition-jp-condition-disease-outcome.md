# JP Core Disease Outcome Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Disease Outcome Extension**

## Extension: JP Core Disease Outcome Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Condition_DiseaseOutcome
* **項目**: *Title*
  * **内容**: JP Core Disease Outcome Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

病名の転帰を格納するための拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Condition Diagnosis Profile](StructureDefinition-jp-condition-diagnosis.md)
* Examples for this Extension: [Condition/jp-condition-diagnosis-example-1](Condition-jp-condition-diagnosis-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-condition-disease-outcome)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-condition-disease-outcome.csv), [Excel](StructureDefinition-jp-condition-disease-outcome.xlsx), [Schematron](StructureDefinition-jp-condition-disease-outcome.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-condition-disease-outcome",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome",
  "version" : "1.3.0-dev",
  "name" : "JP_Condition_DiseaseOutcome",
  "title" : "JP Core Disease Outcome Extension",
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
  "description" : "病名の転帰を格納するための拡張",
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
      "expression" : "Condition"
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
        "short" : "病名転帰",
        "definition" : "病名の転帰を格納するための拡張。\r\n病名の転帰をCodeableConcept型で記述する。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "病名転帰",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding",
        "path" : "Extension.value[x].coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Extension.value[x].coding:hl70241",
        "path" : "Extension.value[x].coding",
        "sliceName" : "hl70241",
        "short" : "HL7表0241。【詳細参照】",
        "definition" : "HL7表0241で定義されているコード。",
        "comment" : "JP_ConditionDiseaseOutcomeHL70241_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ConditionDiseaseOutcomeHL70241_VS"
        }
      },
      {
        "id" : "Extension.value[x].coding:hl70241.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241"
      },
      {
        "id" : "Extension.value[x].coding:hl70241.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].coding:jhsd0006",
        "path" : "Extension.value[x].coding",
        "sliceName" : "jhsd0006",
        "short" : "JHSD表0006。【詳細参照】",
        "definition" : "JHSD表0006で定義されているコード。",
        "comment" : "JP_ConditionDiseaseOutcomeJHSD0006_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ConditionDiseaseOutcomeJHSD0006_VS"
        }
      },
      {
        "id" : "Extension.value[x].coding:jhsd0006.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006"
      },
      {
        "id" : "Extension.value[x].coding:jhsd0006.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].coding:receipt",
        "path" : "Extension.value[x].coding",
        "sliceName" : "receipt",
        "short" : "レセプト電算システム転帰区分コード。【詳細参照】",
        "definition" : "レセプト電算システムで定義されている転帰区分コード。",
        "comment" : "JP_ConditionDiseaseOutcomeReceipt_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ConditionDiseaseOutcomeReceipt_VS"
        }
      },
      {
        "id" : "Extension.value[x].coding:receipt.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS"
      },
      {
        "id" : "Extension.value[x].coding:receipt.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      }
    ]
  }
}

```
