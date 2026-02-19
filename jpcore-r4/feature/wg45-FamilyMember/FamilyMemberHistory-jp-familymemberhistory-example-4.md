# JP Core FamilyMemberHistory Example-4 母方のおば（次女） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Example-4 母方のおば（次女）**

## Example FamilyMemberHistory: JP Core FamilyMemberHistory Example-4 母方のおば（次女）

Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)

> **JP Core FamilyMemberHistory Sibling Order Extension**
* siblingBirthOrder: 3
* genderedSiblingBirthOrder: 次女

**status**: Partial

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**name**: 母方のおば（次女）

**relationship**: maternal aunt

**sex**: Female

### Conditions

| | |
| :--- | :--- |
| - | **Code** |
| * | 糖尿病 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "jp-familymemberhistory-example-4",
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
          "valueInteger" : 3
        },
        {
          "url" : "genderedSiblingBirthOrder",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SiblingBirthOrderByGender_CS",
                "code" : "SBO2_F",
                "display" : "次女"
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
  "name" : "母方のおば（次女）",
  "relationship" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "MAUNT"
      }
    ]
  },
  "sex" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/administrative-gender",
        "code" : "female"
      }
    ]
  },
  "condition" : [
    {
      "code" : {
        "text" : "糖尿病"
      }
    }
  ]
}

```
