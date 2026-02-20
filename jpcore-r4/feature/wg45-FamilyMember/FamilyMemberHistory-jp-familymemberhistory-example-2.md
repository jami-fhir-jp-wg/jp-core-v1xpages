# JP Core FamilyMemberHistory Example-2 息子（長男） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Example-2 息子（長男）**

## Example FamilyMemberHistory: JP Core FamilyMemberHistory Example-2 息子（長男）

Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)

**status**: Partial

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**relationship**: 実息子

**sex**: Male

**reasonCode**: MELASの疑い

**note**: 

> 

糖尿病の既往なし。


### Conditions

| | |
| :--- | :--- |
| - | **Code** |
| * | 花粉症 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "jp-familymemberhistory-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"
    ]
  },
  "status" : "partial",
  "patient" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "relationship" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "siblingBirthOrder",
            "valueInteger" : 1
          },
          {
            "url" : "siblingBirthOrderByGender",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SiblingBirthOrderByGender_CS",
                  "code" : "SBO1_M",
                  "display" : "長男"
                }
              ]
            }
          }
        ],
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_Relationship_SiblingOrder"
      }
    ],
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "SON",
        "display" : "実息子"
      }
    ]
  },
  "sex" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "male"
      }
    ]
  },
  "reasonCode" : [
    {
      "text" : "MELASの疑い"
    }
  ],
  "note" : [
    {
      "text" : "糖尿病の既往なし。"
    }
  ],
  "condition" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/sid/icd-10",
            "code" : "J30.4",
            "display" : "アレルギー性鼻炎（詳細不明）"
          }
        ],
        "text" : "花粉症"
      }
    }
  ]
}

```
