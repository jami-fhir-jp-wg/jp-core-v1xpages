# JP Core DiagnosticReport Pathology Example 1 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Pathology Example 1**

## Example DiagnosticReport: JP Core DiagnosticReport Pathology Example 1

Profile: [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md)

## Pathology study (病理 ) 

| | |
| :--- | :--- |
| Subject | 山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010) |
| When For | 2026-08-10 10:30:00+0900 |
| Reported | 2026-08-10 14:00:00+0900 |
| Performer | [Practitioner 東京 春子](Practitioner-jp-practitioner-example-female-1.md) |
| Identifier | `http://hospital.example.org/fhir/pathology-report-id`/P2026-001234-v1 |

**Report Details**

胃体部の腺癌。深達度pT2（MP）。リンパ節転移陰性。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "JP-DiagnosticReport-Pathology-Example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology"
    ]
  },
  "identifier" : [
    {
      "system" : "http://hospital.example.org/fhir/pathology-report-id",
      "value" : "P2026-001234-v1"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LP7839-6",
          "display" : "病理"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11526-1",
        "display" : "Pathology study"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2026-08-10T10:30:00+09:00",
  "issued" : "2026-08-10T14:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-female-1"
    }
  ],
  "resultsInterpreter" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "specimen" : [
    {
      "reference" : "Specimen/jp-specimen-example-1"
    }
  ],
  "conclusion" : "胃体部の腺癌。深達度pT2（MP）。リンパ節転移陰性。",
  "presentedForm" : [
    {
      "contentType" : "application/pdf",
      "data" : "JVBERi0xLjQKJeLjz9MKMSAwIG9iago8PAovVGl0bGUgKFBhdGhvbG9neSBSZXBvcnQpCj4+",
      "title" : "病理診断報告書"
    }
  ]
}

```
