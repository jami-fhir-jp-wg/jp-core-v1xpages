# JP Core Specimen Pathology Example - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Specimen Pathology Example**

## Example Specimen: JP Core Specimen Pathology Example

Profile: [JP Core Specimen Pathology Profile](StructureDefinition-jp-specimen-pathology.md)

**identifier**: `http://hospital.example.org/fhir/specimen-id`/PATH-2026-00001

**accessionIdentifier**: `http://hospital.example.org/fhir/accession-id`/ACC-2026-00001

**status**: Available

**type**: 組織

**subject**: [Patient/jp-patient-example](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Patient/jp-patient-example)

**receivedTime**: 2026-08-10 10:30:00+0900

### Collections

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Method** | **BodySite** |
| * | [Practitioner/jp-practitioner-example](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Practitioner/jp-practitioner-example) | 2026-08-10 09:00:00+0900 | 生検 | 胃 |

**note**: 

> 

手術検体。ホルマリン固定済み。


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "JP-Specimen-Pathology-Example",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Pathology"
    ]
  },
  "identifier" : [
    {
      "system" : "http://hospital.example.org/fhir/specimen-id",
      "value" : "PATH-2026-00001"
    }
  ],
  "accessionIdentifier" : {
    "system" : "http://hospital.example.org/fhir/accession-id",
    "value" : "ACC-2026-00001"
  },
  "status" : "available",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
        "code" : "TISS",
        "display" : "Tissue"
      }
    ],
    "text" : "組織"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example"
  },
  "receivedTime" : "2026-08-10T10:30:00+09:00",
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/jp-practitioner-example"
    },
    "collectedDateTime" : "2026-08-10T09:00:00+09:00",
    "method" : {
      "text" : "生検"
    },
    "bodySite" : {
      "text" : "胃"
    }
  },
  "note" : [
    {
      "text" : "手術検体。ホルマリン固定済み。"
    }
  ]
}

```
