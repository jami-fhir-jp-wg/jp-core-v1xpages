# JP ImagingStudy Pathology Example 病理WSI画像 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP ImagingStudy Pathology Example 病理WSI画像**

## Example ImagingStudy: JP ImagingStudy Pathology Example 病理WSI画像

Profile: [JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md)

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/7.3.0/NamingSystem-dui.html)/urn:oid:1.2.392.200119.99999.100.1.20210101120000

**status**: Available

**modality**: [DICOM: SM](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-SM) (Slide Microscopy)

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**started**: 2021-01-15 10:30:00+0900

**numberOfSeries**: 1

**numberOfInstances**: 5

**description**: 病理組織検査 胃生検

> **series****uid**: 1.2.392.200119.99999.100.1.20210101120000.1**number**: 1**modality**:[DICOM: SM](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-SM)(Slide Microscopy)**description**: HE染色**numberOfInstances**: 5**specimen**:[Specimen: identifier = http://example.org/abc-hospital/identifiers/collections#JP_local_example_identifiersystem_NamingSystem#23234352356; accessionIdentifier = http://example.org/abc-hospital/specimens/2011#JP_local_example_identifiersystem_NamingSystem#X352356; status = available; type = Urine; receivedTime = 2021-10-11 11:03:00+0900](Specimen-jp-specimen-example-1.md)**started**: 2021-01-15 10:30:00+0900
> **instance****uid**: 1.2.392.200119.99999.100.1.20210101120000.1.1**sopClass**:[DICOM® Unique Identifiers: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-urn.58oid.581.462.46840.4610008.465.461.464.461.461.4677.461.466)(urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6)**number**: 1**title**: WSI Image 1

> **instance****uid**: 1.2.392.200119.99999.100.1.20210101120000.1.2**sopClass**:[DICOM® Unique Identifiers: urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-urn.58oid.581.462.46840.4610008.465.461.464.461.461.4677.461.466)(urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6)**number**: 2**title**: WSI Image 2

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "jp-imagingstudy-pathology-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Pathology"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:dicom:uid",
      "value" : "urn:oid:1.2.392.200119.99999.100.1.20210101120000"
    }
  ],
  "status" : "available",
  "modality" : [
    {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "SM",
      "display" : "Slide Microscopy"
    }
  ],
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "started" : "2021-01-15T10:30:00+09:00",
  "numberOfSeries" : 1,
  "numberOfInstances" : 5,
  "description" : "病理組織検査 胃生検",
  "series" : [
    {
      "uid" : "1.2.392.200119.99999.100.1.20210101120000.1",
      "number" : 1,
      "modality" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "SM",
        "display" : "Slide Microscopy"
      },
      "description" : "HE染色",
      "numberOfInstances" : 5,
      "specimen" : [
        {
          "reference" : "Specimen/jp-specimen-example-1"
        }
      ],
      "started" : "2021-01-15T10:30:00+09:00",
      "instance" : [
        {
          "uid" : "1.2.392.200119.99999.100.1.20210101120000.1.1",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6"
          },
          "number" : 1,
          "title" : "WSI Image 1"
        },
        {
          "uid" : "1.2.392.200119.99999.100.1.20210101120000.1.2",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.77.1.6"
          },
          "number" : 2,
          "title" : "WSI Image 2"
        }
      ]
    }
  ]
}

```
