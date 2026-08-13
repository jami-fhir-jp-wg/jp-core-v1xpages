# JP Core Media Pathology Example 01 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Media Pathology Example 01**

## Example Media: JP Core Media Pathology Example 01

Profile: [JP Core Media Pathology Profile](StructureDefinition-jp-media-pathology.md)

**identifier**: [JP_IdSystem_PrescriptionDocumentID_NamingSystem](NamingSystem-jp-IdSystem-prescriptionDocumentID-namingsystem.md)/MEDIA-PATH-001-001

**status**: Completed

**type**: Image

**modality**: External-camera Photography

**subject**: [Patient/jp-patient-example-01](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Patient/jp-patient-example-01)

**issued**: 2026-08-10 10:30:00+0900

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** |
| * | image/jpeg | [http://example.org/fhir/media/pathology/specimen-001.jpg](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://example.org/fhir/media/pathology/specimen-001.jpg) | 病理検体画像 001 |

**note**: 

> 

臓器全体像の撮影画像


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "JP-Media-Pathology-Example-01",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Pathology"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "MEDIA-PATH-001-001"
    }
  ],
  "status" : "completed",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/media-type",
        "code" : "image",
        "display" : "Image"
      }
    ]
  },
  "modality" : {
    "coding" : [
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "XC",
        "display" : "External-camera Photography"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-01"
  },
  "issued" : "2026-08-10T10:30:00+09:00",
  "content" : {
    "contentType" : "image/jpeg",
    "url" : "http://example.org/fhir/media/pathology/specimen-001.jpg",
    "title" : "病理検体画像 001"
  },
  "note" : [
    {
      "text" : "臓器全体像の撮影画像"
    }
  ]
}

```
