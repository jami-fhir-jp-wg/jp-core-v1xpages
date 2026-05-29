# JP Core ImagingStudy Endoscopy Example 内視鏡画像検査 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ImagingStudy Endoscopy Example 内視鏡画像検査**

## Example ImagingStudy: JP Core ImagingStudy Endoscopy Example 内視鏡画像検査

Profile: [JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md)

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/7.1.0/NamingSystem-dui.html)/urn:oid:2.16.124.113543.6003.1154777499.30246.19789.20230425001

**status**: Available

**modality**: [DICOM: ES](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-ES) (Endoscopy)

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

**started**: 2023-04-21 15:54:32+0900

**endpoint**: [Endpoint ABC Hospital PACS DICOM WADO-RS endpoint](Endpoint-endpoint-dicom-wadors-example.md)

**numberOfSeries**: 1

**numberOfInstances**: 5

> **series****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1**number**: 1**modality**:[DICOM: ES](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-ES)(Endoscopy)**numberOfInstances**: 5**endpoint**:[Endpoint ABC Hospital PACS DICOM WADO-RS endpoint](Endpoint-endpoint-dicom-wadors-example.md)
> **instance****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.1**sopClass**:[DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.77.1.1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.4677.461.461)(VLEndoscopicImageStorage)**number**: 1

> **instance****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.2**sopClass**:[DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.77.1.1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.4677.461.461)(VLEndoscopicImageStorage)**number**: 2

> **instance****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.3**sopClass**:[DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.77.1.1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.4677.461.461)(VLEndoscopicImageStorage)**number**: 3

> **instance****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.4**sopClass**:[DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.77.1.1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.4677.461.461)(VLEndoscopicImageStorage)**number**: 4

> **instance****uid**: 2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.5**sopClass**:[DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.77.1.1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.4677.461.461)(VLEndoscopicImageStorage)**number**: 5

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "jp-imagingstudy-endoscopy-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Endoscopy"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:dicom:uid",
      "value" : "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.20230425001"
    }
  ],
  "status" : "available",
  "modality" : [
    {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "ES",
      "display" : "Endoscopy"
    }
  ],
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "started" : "2023-04-21T15:54:32+09:00",
  "endpoint" : [
    {
      "reference" : "Endpoint/endpoint-dicom-wadors-example"
    }
  ],
  "numberOfSeries" : 1,
  "numberOfInstances" : 5,
  "series" : [
    {
      "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1",
      "number" : 1,
      "modality" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "ES",
        "display" : "Endoscopy"
      },
      "numberOfInstances" : 5,
      "endpoint" : [
        {
          "reference" : "Endpoint/endpoint-dicom-wadors-example"
        }
      ],
      "instance" : [
        {
          "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.1",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.77.1.1"
          },
          "number" : 1
        },
        {
          "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.2",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.77.1.1"
          },
          "number" : 2
        },
        {
          "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.3",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.77.1.1"
          },
          "number" : 3
        },
        {
          "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.4",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.77.1.1"
          },
          "number" : 4
        },
        {
          "uid" : "2.16.124.113543.6003.1154777499.30246.19789.20230425001.1.5",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.77.1.1"
          },
          "number" : 5
        }
      ]
    }
  ]
}

```
