# JP Core Medication Example ソリタ－＋アドナ注 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Example ソリタ－＋アドナ注**

## Example Medication: JP Core Medication Example ソリタ－＋アドナ注

Profile: [JP Core Medication Profile](StructureDefinition-jp-medication.md)

**status**: Active

> **ingredient****item**:ソリタ－Ｔ３号輸液 ５００ｍＬ**strength**: 1 本(Details: JP Core Medication MERIT9 Unit CodeSystem codeHON = '本')/1 回(Details: JP Core Medication MERIT9 Unit CodeSystem codeTIME = '回')

> **ingredient****item**:アドナ注（静脈用）５０ｍｇ ０．５％１０ｍＬ**strength**: 1 アンプル(Details: JP Core Medication MERIT9 Unit CodeSystem codeAMP = 'アンプル')/1 回(Details: JP Core Medication MERIT9 Unit CodeSystem codeTIME = '回')

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "jp-medication-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
    ]
  },
  "status" : "active",
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
            "code" : "107750603",
            "display" : "ソリタ－Ｔ３号輸液　５００ｍＬ"
          }
        ]
      },
      "strength" : {
        "numerator" : {
          "value" : 1,
          "unit" : "本",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "HON"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "回",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "TIME"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
            "code" : "108010002",
            "display" : "アドナ注（静脈用）５０ｍｇ　０．５％１０ｍＬ"
          }
        ]
      },
      "strength" : {
        "numerator" : {
          "value" : 1,
          "unit" : "アンプル",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "AMP"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "回",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "TIME"
        }
      }
    }
  ]
}

```
