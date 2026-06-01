# JP Core FamilyMemberHistory Example-3 内縁のパートナー（血縁なし） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Example-3 内縁のパートナー（血縁なし）**

## Example FamilyMemberHistory: JP Core FamilyMemberHistory Example-3 内縁のパートナー（血縁なし）

Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)

**status**: Partial

**patient**: [山田 太郎](Patient-jp-patient-example-1.md)

**name**: 鈴木 花子

**relationship**: 内縁のパートナー

**sex**: Female

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "FamilyMemberHistory",
  "id" : "jp-familymemberhistory-example-3",
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
  "name" : "鈴木 花子",
  "relationship" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "DOMPART",
        "display" : "内縁のパートナー"
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
  }
}

```
