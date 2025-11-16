# JP Core Dental TeethObservation ValueSet - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Dental TeethObservation ValueSet**

## ValueSet: JP Core Dental TeethObservation ValueSet 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_DentalTeethObservation_VS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DentalTeethObservation_VS
* **項目**: *Title*
  * **内容**: JP Core Dental TeethObservation ValueSet
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した歯科のObservationリソースに関する歯面の詳細部位構造コード 

 **References** 

* [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Include all codes defined in [`http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS`](CodeSystem-jp-dental-presentteeth-observation-cs.md)version 📦1.3.0-dev
* Include all codes defined in [`http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimplePresentTeethObservation_CS`](CodeSystem-jp-dental-simple-presentteeth-observation-cs.md)version 📦1.3.0-dev
* Include all codes defined in [`http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalMissingTeethObservation_CS`](CodeSystem-jp-dental-missingteeth-observation-cs.md)version 📦1.3.0-dev
* Include all codes defined in [`http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS`](CodeSystem-jp-dental-simple-missingteeth-observation-cs.md)version 📦1.3.0-dev

 

### Expansion

This value set contains 439 concepts

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
  "id" : "jp-dental-teethobservation-vs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DentalTeethObservation_VS",
  "version" : "1.3.0-dev",
  "name" : "JP_DentalTeethObservation_VS",
  "title" : "JP Core Dental TeethObservation ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-07-30",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関する歯面の詳細部位構造コード",
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
  "copyright" : "Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG",
  "compose" : {
    "include" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS"
      },
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimplePresentTeethObservation_CS"
      },
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalMissingTeethObservation_CS"
      },
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS"
      }
    ]
  }
}

```
