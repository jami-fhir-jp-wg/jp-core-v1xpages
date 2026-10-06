# JP Core Observation SocialHistory Example 社会的背景（喫煙） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation SocialHistory Example 社会的背景（喫煙）**

## Example Observation: JP Core Observation SocialHistory Example 社会的背景（喫煙）

Profile: [JP Core Observation SocialHistory Profile](StructureDefinition-jp-observation-socialhistory.md)

**status**: Final

**category**: Social History

**code**: ブリンクマン指数

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-10-19 10:00:00+0900

**performer**: [Practitioner 福岡 花子](Practitioner-jp-practitioner-example-female-2.md)

**value**: 400

> **component****code**:通算喫煙年数**value**: 20 年

> **component****code**:１日の喫煙本数**value**: 20 本

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-socialhistory-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_SocialHistory"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "social-history",
          "display" : "Social History"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "abc-local-456",
        "display" : "ブリンクマン指数"
      },
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationSocialHistoryCode_CS",
        "code" : "MD0012920",
        "display" : "喫煙指数"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2021-10-19T10:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-female-2"
    }
  ],
  "valueQuantity" : {
    "value" : 400
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationSocialHistoryCode_CS",
            "code" : "MD0012910",
            "display" : "通算喫煙年数"
          }
        ],
        "text" : "通算喫煙年数"
      },
      "valueQuantity" : {
        "value" : 20,
        "unit" : "年"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationSocialHistoryCode_CS",
            "code" : "MD0012900",
            "display" : "１日の喫煙本数"
          }
        ],
        "text" : "１日の喫煙本数"
      },
      "valueQuantity" : {
        "value" : 20,
        "unit" : "本"
      }
    }
  ]
}

```
