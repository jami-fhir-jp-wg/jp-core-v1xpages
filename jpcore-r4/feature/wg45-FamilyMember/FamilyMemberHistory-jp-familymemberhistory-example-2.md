# JP Core FamilyMemberHistory Example-2 家族歴（息子 長男）、氏名が不明 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Example-2 家族歴（息子 長男）、氏名が不明**

## Example FamilyMemberHistory: JP Core FamilyMemberHistory Example-2 家族歴（息子 長男）、氏名が不明

Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)

> **JP Core FamilyMemberHistory Sibling Order Extension**
* siblingBirthOrder: 1
* siblingBirthOrderByGender: 長男

**status**: Partial

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**relationship**: natural son

**sex**: Male

**reasonCode**: 糖尿病

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
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder"
    }
  ],
  "status" : "partial",
  "patient" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "relationship" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "SON"
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
      "text" : "糖尿病"
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
        "text" : "花粉症"
      }
    }
  ]
}

```
