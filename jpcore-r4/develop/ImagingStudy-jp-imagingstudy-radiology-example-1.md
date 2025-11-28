# JP Core ImagingStudy Radiology Example 放射線画像検査 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ImagingStudy Radiology Example 放射線画像検査**

## Example ImagingStudy: JP Core ImagingStudy Radiology Example 放射線画像検査

Profile: [JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md)

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/7.0.0/NamingSystem-dui.html)/urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045

**status**: Available

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**started**: 2021-01-01 11:01:20+0900

**numberOfSeries**: 1

**numberOfInstances**: 1

> **series****uid**: 2.16.124.113543.6003.2588828330.45298.17418.2723805630**number**: 3**modality**:[DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT)(Computed Tomography)**description**: CT胸部スクリーニング**numberOfInstances**: 1**bodySite**:[SNOMED CT: 43799004](http://snomed.info/id/43799004)(Thoracic cavity)

### Instances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Uid** | **SopClass** | **Number** |
| * | 2.16.124.113543.6003.189642796.63084.16748.2599092903 | [DICOM® Unique Identifiers: 1.2.840.10008.5.1.4.1.1.2](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids#dicom-uids-cs-1.462.46840.4610008.465.461.464.461.461.462)(CTImageStorage) | 1 |


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "jp-imagingstudy-radiology-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:dicom:uid",
      "value" : "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045"
    }
  ],
  "status" : "available",
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "started" : "2021-01-01T11:01:20+09:00",
  "numberOfSeries" : 1,
  "numberOfInstances" : 1,
  "series" : [
    {
      "uid" : "2.16.124.113543.6003.2588828330.45298.17418.2723805630",
      "number" : 3,
      "modality" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "CT"
      },
      "description" : "CT胸部スクリーニング",
      "numberOfInstances" : 1,
      "bodySite" : {
        "system" : "http://snomed.info/sct",
        "code" : "43799004",
        "display" : "Thoracic cavity"
      },
      "instance" : [
        {
          "uid" : "2.16.124.113543.6003.189642796.63084.16748.2599092903",
          "sopClass" : {
            "system" : "http://hl7.org/fhir/uv/imaging-service-request-ig/CodeSystem/dicom-uids",
            "code" : "1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 1
        }
      ]
    }
  ]
}

```
