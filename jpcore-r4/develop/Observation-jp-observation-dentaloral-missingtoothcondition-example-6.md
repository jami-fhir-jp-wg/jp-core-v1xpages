# JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果６（欠損歯の状態） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果６（欠損歯の状態）**

## Example Observation: JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果６（欠損歯の状態）

Profile: [JP Core Observation DentalOral Missing Tooth Condition Profile](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.md)

**identifier**: 20221001-0006

**status**: Final

**category**: Dental, 欠損歯の処置状態, MissingToothCondition

**code**: Oral/Dental Status

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2022-10-01

**issued**: 2022-10-24 17:30:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**bodySite**: 右側下顎第１大臼歯

### Components

| | |
| :--- | :--- |
| - | **Code** |
| * | 有床義歯（レジン床） |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-dentaloral-missingtoothcondition-example-6",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_MissingToothCondition"
    ]
  },
  "identifier" : [
    {
      "value" : "20221001-0006"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LP89803-8",
          "display" : "Dental"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "exam",
          "display" : "exam"
        }
      ],
      "text" : "欠損歯の処置状態"
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS",
          "code" : "DO-1-03",
          "display" : "MissingToothCondition"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "54570-7",
        "display" : "Oral/Dental Status"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2022-10-01",
  "issued" : "2022-10-24T17:30:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "bodySite" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
        "code" : "1046",
        "display" : "右側下顎第１大臼歯"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalMissingTeethObservation_CS",
            "code" : "TM-4-02",
            "display" : "有床義歯（レジン床）"
          },
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS",
            "code" : "TD-2-59",
            "display" : "欠損歯【喪失歯（欠損補綴歯・義歯・人工歯）(△)】"
          }
        ]
      }
    }
  ]
}

```
