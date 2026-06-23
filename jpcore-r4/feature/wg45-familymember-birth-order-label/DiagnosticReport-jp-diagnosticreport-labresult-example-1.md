# JP Core DiagnosticReport_LabResult Example 検体検査（血液）レポート - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport_LabResult Example 検体検査（血液）レポート**

## Example DiagnosticReport: JP Core DiagnosticReport_LabResult Example 検体検査（血液）レポート

Profile: [JP Core DiagnosticReport LabResult Profile](StructureDefinition-jp-diagnosticreport-labresult.md)

## 検体検査報告書 (検体検査 ) 

| | |
| :--- | :--- |
| Subject | 山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010) |
| When For | 2021-08-25 08:30:00+0900 |
| Reported | 2021-03-04 11:45:33+0900 |
| Performer | [健康第一病院](Organization-jp-organization-example-hospital.md) |
| Identifier | [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/5234342 |

**Report Details**

* **Code**: [ヘモグロビン](#hcjp-diagnosticreport-labresult-example-1/inner-observation-labresult-1)
  * **Value**: 176 g/L(Details: UCUM codeg/L = 'g/L')
  * **Reference Range**: 135 g/L(Details: UCUM codeg/L = 'g/L')- 180 g/L(Details: UCUM codeg/L = 'g/L')
  * **Flags**: Final
  * **When For**: 2021-03-04 08:30:00+0900
* **Code**: [赤血球数](#hcjp-diagnosticreport-labresult-example-1/inner-observation-labresult-2)
  * **Value**: 5.9 10*6/uL(Details: UCUM code10*6/uL = '10*6/uL')
  * **Reference Range**: 4.2 10*6./L(Details: UCUM code10*6/uL = '10*6/uL')- 6 10*6./L(Details: UCUM code10*6/uL = '10*6/uL')
  * **Flags**: Final
  * **When For**: 2021-03-04 08:30:00+0900
* **Code**: [ヘマトクリット](#hcjp-diagnosticreport-labresult-example-1/inner-observation-labresult-3)
  * **Value**: 55 %
  * **Reference Range**: 38 % - 52 %
  * **Flags**: Final,High
  * **When For**: 2021-03-04 08:30:00+0900

-------

Profile: [JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md)

**status**: Final

**category**: Laboratory

**code**: ヘモグロビン

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-03-04 08:30:00+0900

**performer**: [健康第一病院](Organization-jp-organization-example-hospital.md)

**value**: 176 g/L(Details: UCUM codeg/L = 'g/L')

**specimen**: [Specimen: identifier = http://example.org/abc-hospital/identifiers/collections#JP_local_example_identifiersystem_NamingSystem#23234352357; accessionIdentifier = http://example.org/abc-hospital/specimens/2011#JP_local_example_identifiersystem_NamingSystem#X352357; status = available; type = Whole blood; receivedTime = 2021-08-11 11:03:00+0900](Specimen-jp-specimen-example-2.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 135 g/L(Details: UCUM codeg/L = 'g/L') | 180 g/L(Details: UCUM codeg/L = 'g/L') |

-------

Profile: [JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md)

**status**: Final

**category**: Laboratory

**code**: 赤血球数

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-03-04 08:30:00+0900

**performer**: [健康第一病院](Organization-jp-organization-example-hospital.md)

**value**: 5.9 10*6/uL(Details: UCUM code10*6/uL = '10*6/uL')

**specimen**: [Specimen: identifier = http://example.org/abc-hospital/identifiers/collections#JP_local_example_identifiersystem_NamingSystem#23234352357; accessionIdentifier = http://example.org/abc-hospital/specimens/2011#JP_local_example_identifiersystem_NamingSystem#X352357; status = available; type = Whole blood; receivedTime = 2021-08-11 11:03:00+0900](Specimen-jp-specimen-example-2.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 4.2 10*6./L(Details: UCUM code10*6/uL = '10*6/uL') | 6 10*6./L(Details: UCUM code10*6/uL = '10*6/uL') |

-------

Profile: [JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md)

**status**: Final

**category**: Laboratory

**code**: ヘマトクリット

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-03-04 08:30:00+0900

**performer**: [健康第一病院](Organization-jp-organization-example-hospital.md)

**value**: 55 %

**interpretation**: High

**specimen**: [Specimen: identifier = http://example.org/abc-hospital/identifiers/collections#JP_local_example_identifiersystem_NamingSystem#23234352357; accessionIdentifier = http://example.org/abc-hospital/specimens/2011#JP_local_example_identifiersystem_NamingSystem#X352357; status = available; type = Whole blood; receivedTime = 2021-08-11 11:03:00+0900](Specimen-jp-specimen-example-2.md)

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 38 % | 52 % |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "jp-diagnosticreport-labresult-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_LabResult"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Observation",
      "id" : "inner-observation-labresult-1",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult"
        ]
      },
      "status" : "final",
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
              "code" : "laboratory"
            }
          ]
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
            "code" : "123",
            "display" : "ヘモグロビン"
          },
          {
            "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
            "code" : "2A990000001930953"
          }
        ],
        "text" : "ヘモグロビン"
      },
      "subject" : {
        "reference" : "Patient/jp-patient-example-1"
      },
      "effectiveDateTime" : "2021-03-04T08:30:00+09:00",
      "performer" : [
        {
          "reference" : "Organization/jp-organization-example-hospital",
          "display" : "健康第一病院"
        }
      ],
      "valueQuantity" : {
        "value" : 176,
        "unit" : "g/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "g/L"
      },
      "specimen" : {
        "reference" : "Specimen/jp-specimen-example-2"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 135,
            "unit" : "g/L",
            "system" : "http://unitsofmeasure.org",
            "code" : "g/L"
          },
          "high" : {
            "value" : 180,
            "unit" : "g/L",
            "system" : "http://unitsofmeasure.org",
            "code" : "g/L"
          }
        }
      ]
    },
    {
      "resourceType" : "Observation",
      "id" : "inner-observation-labresult-2",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult"
        ]
      },
      "status" : "final",
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
              "code" : "laboratory"
            }
          ]
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
            "code" : "456",
            "display" : "赤血球数"
          },
          {
            "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
            "code" : "2A990000001992051"
          }
        ],
        "text" : "赤血球数"
      },
      "subject" : {
        "reference" : "Patient/jp-patient-example-1"
      },
      "effectiveDateTime" : "2021-03-04T08:30:00+09:00",
      "performer" : [
        {
          "reference" : "Organization/jp-organization-example-hospital",
          "display" : "健康第一病院"
        }
      ],
      "valueQuantity" : {
        "value" : 5.9,
        "unit" : "10*6/uL",
        "system" : "http://unitsofmeasure.org",
        "code" : "10*6/uL"
      },
      "specimen" : {
        "reference" : "Specimen/jp-specimen-example-2"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 4.2,
            "unit" : "10*6./L",
            "system" : "http://unitsofmeasure.org",
            "code" : "10*6/uL"
          },
          "high" : {
            "value" : 6,
            "unit" : "10*6./L",
            "system" : "http://unitsofmeasure.org",
            "code" : "10*6/uL"
          }
        }
      ]
    },
    {
      "resourceType" : "Observation",
      "id" : "inner-observation-labresult-3",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult"
        ]
      },
      "status" : "final",
      "category" : [
        {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
              "code" : "laboratory"
            }
          ]
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
            "code" : "789",
            "display" : "ヘマトクリット"
          },
          {
            "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
            "code" : "2A990000001930954"
          }
        ],
        "text" : "ヘマトクリット"
      },
      "subject" : {
        "reference" : "Patient/jp-patient-example-1"
      },
      "effectiveDateTime" : "2021-03-04T08:30:00+09:00",
      "performer" : [
        {
          "reference" : "Organization/jp-organization-example-hospital",
          "display" : "健康第一病院"
        }
      ],
      "valueQuantity" : {
        "value" : 55,
        "unit" : "%"
      },
      "interpretation" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
              "code" : "H"
            }
          ]
        }
      ],
      "specimen" : {
        "reference" : "Specimen/jp-specimen-example-2"
      },
      "referenceRange" : [
        {
          "low" : {
            "value" : 38,
            "unit" : "%"
          },
          "high" : {
            "value" : 52,
            "unit" : "%"
          }
        }
      ]
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/abc-hospital/fhir/lab/reportid",
      "value" : "5234342"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LP29693-6",
          "display" : "検体検査"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DocumentCodes_CS",
        "code" : "11502-2",
        "display" : "検体検査報告書"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2021-08-25T08:30:00+09:00",
  "issued" : "2021-03-04T11:45:33+09:00",
  "performer" : [
    {
      "reference" : "Organization/jp-organization-example-hospital",
      "display" : "健康第一病院"
    }
  ],
  "result" : [
    {
      "reference" : "#inner-observation-labresult-1"
    },
    {
      "reference" : "#inner-observation-labresult-2"
    },
    {
      "reference" : "#inner-observation-labresult-3"
    }
  ],
  "presentedForm" : [
    {
      "contentType" : "application/pdf",
      "language" : "ja-JP",
      "data" : "JVBERi0xLjUNCiW1tbW1DQoxIDAgb2JqDQo8PC9UeXBlL0NhdGFsb2cvUGFnZXMgMiAwIFIvTGFuZyhqYS1KUCkgL1N0cnVjdFRyZWVSb290IDEzIDAgUi9NYXJrSW5mbzw8L01hcmtlZCB0cnVlPj4+Pg0KZW5kb2JqDQoyIDAgb2JqDQo8PC9UeXBlL1BhZ2VzL0NvdW50IDEvS2lkc1sgMyAwIFJdID4+DQplbmRvYmoNCjMgMCBvYmoN",
      "title" : "検査結果PDFレポート"
    }
  ]
}

```
