# JP Core Disease Postfix Modifier Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Disease Postfix Modifier Extension**

## Extension: JP Core Disease Postfix Modifier Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Condition_DiseasePostfixModifier
* **項目**: *Title*
  * **内容**: JP Core Disease Postfix Modifier Extension
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

病名の後置修飾語を格納するための拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Condition Diagnosis Profile](StructureDefinition-jp-condition-diagnosis.md)
* Examples for this Extension: [Condition/jp-condition-diagnosis-example-1](Condition-jp-condition-diagnosis-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-condition-disease-postfix-modifier)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-condition-disease-postfix-modifier.csv), [Excel](StructureDefinition-jp-condition-disease-postfix-modifier.xlsx), [Schematron](StructureDefinition-jp-condition-disease-postfix-modifier.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-condition-disease-postfix-modifier",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier",
  "version" : "1.3.0-dev",
  "name" : "JP_Condition_DiseasePostfixModifier",
  "title" : "JP Core Disease Postfix Modifier Extension",
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
  "description" : "病名の後置修飾語を格納するための拡張",
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
      "expression" : "Condition.code"
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
        "short" : "後置修飾語",
        "definition" : "後置修飾語を格納するための拡張。\r\n後置修飾語をCodeableConcept型で記述する。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "後置修飾語",
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
        "id" : "Extension.value[x].coding:medisExchange",
        "path" : "Extension.value[x].coding",
        "sliceName" : "medisExchange",
        "short" : "MEDIS ICD10対応標準病名マスター(修飾語交換用コード) 。【詳細参照】",
        "definition" : "MEDIS ICD10対応標準病名マスターの修飾語交換用コード ",
        "comment" : "JP_Modifier_MEDIS_Concept_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://medis.or.jp/ValueSet/master-disease-modExCode"
        }
      },
      {
        "id" : "Extension.value[x].coding:medisExchange.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://medis.or.jp/CodeSystem/master-disease-modExCode"
      },
      {
        "id" : "Extension.value[x].coding:medisExchange.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].coding:medisRecordNo",
        "path" : "Extension.value[x].coding",
        "sliceName" : "medisRecordNo",
        "short" : "MEDIS ICD10対応標準病名マスター(修飾語管理番号) 。【詳細参照】",
        "definition" : "MEDIS ICD10対応標準病名マスターの修飾語管理番号 ",
        "comment" : "JP_ConditionDiseaseModifierMEDISRercordNo_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://medis.or.jp/ValueSet/master-disease-modKeyNumber"
        }
      },
      {
        "id" : "Extension.value[x].coding:medisRecordNo.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://medis.or.jp/CodeSystem/master-disease-modKeyNumber"
      },
      {
        "id" : "Extension.value[x].coding:medisRecordNo.code",
        "path" : "Extension.value[x].coding.code",
        "min" : 1
      },
      {
        "id" : "Extension.value[x].coding:receipt",
        "path" : "Extension.value[x].coding",
        "sliceName" : "receipt",
        "short" : "レセプト電算用修飾語マスター。【詳細参照】",
        "definition" : "レセプト電算システムで定義されている修飾語コード。",
        "comment" : "JP_Modifier_Disease_Claim_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/mhlw/ValueSet/masterZ-disease-modifier"
        }
      },
      {
        "id" : "Extension.value[x].coding:receipt.system",
        "path" : "Extension.value[x].coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/masterZ-disease-modifier"
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
