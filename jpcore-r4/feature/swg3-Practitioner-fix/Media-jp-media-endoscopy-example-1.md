# JP Core Media Endoscopy Example 内視鏡画像 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Media Endoscopy Example 内視鏡画像**

## Example Media: JP Core Media Endoscopy Example 内視鏡画像

Profile: [JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md)

**identifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/202304250945280001

**status**: Completed

**type**: Image

**modality**: Endoscopy

**subject**: [東京 太郎](Patient-jp-patient-example-1.md)

**created**: 2023-04-26

**height**: 1080

**width**: 1920

### Contents

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Creation** |
| * | image/jpeg | [http://samplehospital.org/fhir/binary/A20230426001](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://samplehospital.org/fhir/binary/A20230426001) | 2023-04-26 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Media",
  "id" : "jp-media-endoscopy-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Endoscopy"
    ]
  },
  "identifier" : [
    {
      "system" : "http://samplehospital.org/fhir/endoscopysystem/imaging-orders",
      "value" : "202304250945280001"
    }
  ],
  "status" : "completed",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/media-type",
        "code" : "image"
      }
    ]
  },
  "modality" : {
    "coding" : [
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "ES",
        "display" : "Endoscopy"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "東京 太郎"
  },
  "createdDateTime" : "2023-04-26",
  "height" : 1080,
  "width" : 1920,
  "content" : {
    "contentType" : "image/jpeg",
    "url" : "http://samplehospital.org/fhir/binary/A20230426001",
    "creation" : "2023-04-26"
  }
}

```
