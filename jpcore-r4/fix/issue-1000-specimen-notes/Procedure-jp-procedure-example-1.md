# JP Core Procedure Example 処置（抜糸） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Procedure Example 処置（抜糸）**

## Example Procedure: JP Core Procedure Example 処置（抜糸）

Profile: [JP Core Procedure Profile](StructureDefinition-jp-procedure.md)

**status**: In Progress

**category**: 創傷処置

**code**: 創傷処置（１００ｃｍ２未満）

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

**performed**: 2022-08-03

**bodySite**: 前額部

**outcome**: 成功

**followUp**: 縫合糸の除去

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "jp-procedure-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
    ]
  },
  "status" : "in-progress",
  "category" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureCategory_CS",
        "code" : "JPPCC004",
        "display" : "外科的処置"
      }
    ],
    "text" : "創傷処置"
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureCodesMedical_CS",
        "code" : "140000610"
      }
    ],
    "text" : "創傷処置（１００ｃｍ２未満）"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "performedDateTime" : "2022-08-03",
  "bodySite" : [
    {
      "text" : "前額部"
    }
  ],
  "outcome" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ProcedureOutcome_CS",
        "code" : "JPPOC001",
        "display" : "成功"
      }
    ]
  },
  "followUp" : [
    {
      "text" : "縫合糸の除去"
    }
  ]
}

```
