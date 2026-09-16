# JP Core AllergyIntolerance Example 食物アレルギー（小麦） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core AllergyIntolerance Example 食物アレルギー（小麦）**

## Example AllergyIntolerance: JP Core AllergyIntolerance Example 食物アレルギー（小麦）

Profile: [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: Allergy

**category**: Food

**criticality**: High Risk

**code**: こむぎこ

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**onset**: 2022-08-01

**recordedDate**: 2022-08-03

### Reactions

| | | |
| :--- | :--- | :--- |
| - | **Manifestation** | **Severity** |
| * | じん麻疹 | Moderate |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "jp-allergyintolerance-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed"
      }
    ]
  },
  "type" : "allergy",
  "category" : ["food"],
  "criticality" : "high",
  "code" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_JfagyFoodAllergen_CS",
        "code" : "J9FA15000016",
        "display" : "小麦粉"
      }
    ],
    "text" : "こむぎこ"
  },
  "patient" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "onsetDateTime" : "2022-08-01",
  "recordedDate" : "2022-08-03",
  "reaction" : [
    {
      "manifestation" : [
        {
          "text" : "じん麻疹"
        }
      ],
      "severity" : "moderate"
    }
  ]
}

```
