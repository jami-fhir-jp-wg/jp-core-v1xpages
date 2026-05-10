# JP Core Condition Diagnosis Example 病名（右橈骨遠位端骨折の術後） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Diagnosis Example 病名（右橈骨遠位端骨折の術後）**

## Example Condition: JP Core Condition Diagnosis Example 病名（右橈骨遠位端骨折の術後）

Profile: [JP Core Condition Diagnosis Profile](StructureDefinition-jp-condition-diagnosis.md)

**JP Core Disease Outcome Extension**: 中止(転医)

**identifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/123456789012345

**clinicalStatus**: Inactive

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: 中度

**code**: 右橈骨遠位端骨折の術後

**bodySite**: 右橈骨遠位端

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

**onset**: 2017-02-28

**abatement**: 2017-03-07

**recordedDate**: 2017-03-07

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "jp-condition-diagnosis-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition_Diagnosis"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.sample.com/CodeSystem/disease-outcome",
            "code" : "1",
            "display" : "中止"
          },
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006",
            "code" : "I",
            "display" : "中止"
          }
        ],
        "text" : "中止(転医)"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://terminology.sample.com/IdSystem/disease/1311234567",
      "value" : "123456789012345"
    }
  ],
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "inactive",
        "display" : "Inactive"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item"
        }
      ]
    }
  ],
  "severity" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionSeverity_CS",
        "code" : "MO",
        "display" : "中度"
      }
    ]
  },
  "code" : {
    "extension" : [
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://medis.or.jp/CodeSystem/master-disease-modExCode",
              "code" : "5194",
              "display" : "右"
            }
          ],
          "text" : "右"
        }
      },
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://medis.or.jp/CodeSystem/master-disease-modExCode",
              "code" : "1486",
              "display" : "の術後"
            }
          ],
          "text" : "の術後"
        }
      }
    ],
    "coding" : [
      {
        "system" : "http://terminology.sample.com/CodeSystem/disease/1311234567",
        "code" : "MD13062",
        "display" : "橈骨遠位端骨折"
      },
      {
        "system" : "http://medis.or.jp/CodeSystem/master-disease-exCode",
        "code" : "CJTR",
        "display" : "橈骨遠位端骨折"
      }
    ],
    "text" : "右橈骨遠位端骨折の術後"
  },
  "bodySite" : [
    {
      "text" : "右橈骨遠位端"
    }
  ],
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "onsetDateTime" : "2017-02-28",
  "abatementDateTime" : "2017-03-07",
  "recordedDate" : "2017-03-07"
}

```
