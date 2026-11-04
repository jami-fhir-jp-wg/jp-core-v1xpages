# JP Core DICOM Modality ValueSet - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DICOM Modality ValueSet**

## ValueSet: JP Core DICOM Modality ValueSet 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DICOMModality_VS
* **項目**: *Title*
  * **内容**: JP Core DICOM Modality ValueSet
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: DICOM® is the registered trademark of the National Electrical Manufacturers Association for its Standards publications relating to digital communications of medical information.

 
放射線モダリテに対する 値セット 

 **References** 

* [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md)
* [JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md)
* [JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md)
* [JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jp-dicommodality-vs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS",
  "version" : "1.3.0-dev",
  "name" : "JP_DICOMModality_VS",
  "title" : "JP Core DICOM Modality ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-30",
  "publisher" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
  "contact" : [
    {
      "name" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://jpfhir.jp"
        },
        {
          "system" : "email",
          "value" : "office@hlfhir.jp"
        }
      ]
    }
  ],
  "description" : "放射線モダリテに対する 値セット",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "JP",
          "display" : "Japan"
        }
      ]
    }
  ],
  "copyright" : "DICOM® is the registered trademark of the National Electrical Manufacturers Association for its Standards publications relating to digital communications of medical information. ",
  "compose" : {
    "include" : [
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "concept" : [
          {
            "code" : "AR",
            "display" : "Autorefraction"
          },
          {
            "code" : "AU",
            "display" : "Basic Voice Audio"
          },
          {
            "code" : "BDUS",
            "display" : "Ultrasound Bone Densitometry"
          },
          {
            "code" : "BI",
            "display" : "Biomagnetic Imaging"
          },
          {
            "code" : "BMD",
            "display" : "Bone Mineral Densitometry"
          },
          {
            "code" : "CR",
            "display" : "Computed Radiography"
          },
          {
            "code" : "CT",
            "display" : "Computed Tomography"
          },
          {
            "code" : "DG",
            "display" : "Diaphanography"
          },
          {
            "code" : "DX",
            "display" : "Digital Radiography"
          },
          {
            "code" : "ECG",
            "display" : "Electrocardiography"
          },
          {
            "code" : "EPS",
            "display" : "Cardiac Electrophysiology"
          },
          {
            "code" : "ES",
            "display" : "Endoscopy"
          },
          {
            "code" : "GM",
            "display" : "General Microscopy"
          },
          {
            "code" : "HC",
            "display" : "Hard Copy"
          },
          {
            "code" : "HD",
            "display" : "Hemodynamic Waveform"
          },
          {
            "code" : "IO",
            "display" : "Intra-oral Radiography"
          },
          {
            "code" : "IVOCT",
            "display" : "Intravascular Optical Coherence Tomography"
          },
          {
            "code" : "IVUS",
            "display" : "Intravascular Ultrasound"
          },
          {
            "code" : "KER",
            "display" : "Keratometry"
          },
          {
            "code" : "KO",
            "display" : "Key Object Selection"
          },
          {
            "code" : "LEN",
            "display" : "Lensometry"
          },
          {
            "code" : "LS",
            "display" : "Laser Scan"
          },
          {
            "code" : "MG",
            "display" : "Mammography"
          },
          {
            "code" : "MR",
            "display" : "Magnetic Resonance"
          },
          {
            "code" : "NM",
            "display" : "Nuclear Medicine"
          },
          {
            "code" : "OAM",
            "display" : "Ophthalmic Axial Measurements"
          },
          {
            "code" : "OCT",
            "display" : "Optical Coherence Tomography"
          },
          {
            "code" : "OP",
            "display" : "Ophthalmic Photography"
          },
          {
            "code" : "OPM",
            "display" : "Ophthalmic Mapping"
          },
          {
            "code" : "OPT",
            "display" : "Ophthalmic Tomography"
          },
          {
            "code" : "OPV",
            "display" : "Ophthalmic Visual Field"
          },
          {
            "code" : "OSS",
            "display" : "Optical Surface Scanner"
          },
          {
            "code" : "OT",
            "display" : "Other"
          },
          {
            "code" : "PR",
            "display" : "Presentation State"
          },
          {
            "code" : "PT",
            "display" : "Positron emission tomography"
          },
          {
            "code" : "PX",
            "display" : "Panoramic X-Ray"
          },
          {
            "code" : "REG",
            "display" : "Registration"
          },
          {
            "code" : "RF",
            "display" : "Radiofluoroscopy"
          },
          {
            "code" : "RG",
            "display" : "Radiographic imaging"
          },
          {
            "code" : "RTDOSE",
            "display" : "RT Dose"
          },
          {
            "code" : "RTIMAGE",
            "display" : "RT Image"
          },
          {
            "code" : "RTPLAN",
            "display" : "RT Plan"
          },
          {
            "code" : "RTRECORD",
            "display" : "RT Treatment Record"
          },
          {
            "code" : "RTSTRUCT",
            "display" : "RT Structure Set"
          },
          {
            "code" : "SEG",
            "display" : "Segmentation"
          },
          {
            "code" : "SM",
            "display" : "Slide Microscopy"
          },
          {
            "code" : "SMR",
            "display" : "Stereometric Relationship"
          },
          {
            "code" : "SR",
            "display" : "Structured Report Document"
          },
          {
            "code" : "SRF",
            "display" : "Subjective Refraction"
          },
          {
            "code" : "TG",
            "display" : "Thermography"
          },
          {
            "code" : "US",
            "display" : "Ultrasound"
          },
          {
            "code" : "VA",
            "display" : "Visual Acuity"
          },
          {
            "code" : "XA",
            "display" : "X-Ray Angiography"
          },
          {
            "code" : "XC",
            "display" : "External-camera Photography"
          }
        ]
      }
    ]
  }
}

```
