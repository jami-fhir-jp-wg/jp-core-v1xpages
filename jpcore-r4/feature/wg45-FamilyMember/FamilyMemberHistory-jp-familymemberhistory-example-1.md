# JP Core FamilyMemberHistory Example-1 基本的な家族歴（母親） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Example-1 基本的な家族歴（母親）**

## Example FamilyMemberHistory: JP Core FamilyMemberHistory Example-1 基本的な家族歴（母親）

Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)

**status**: Partial

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**relationship**: mother

**sex**: Female

**reasonCode**: 難聴

> **condition****code**:糖尿病

> **condition****code**:難聴

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "jp-familymemberhistory-example-1",
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
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "MTH"
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
  "reasonCode" : [
    {
      "text" : "難聴"
    }
  ],
  "condition" : [
    {
      "code" : {
        "text" : "糖尿病"
      }
    },
    {
      "code" : {
        "text" : "難聴"
      }
    }
  ]
}

```
