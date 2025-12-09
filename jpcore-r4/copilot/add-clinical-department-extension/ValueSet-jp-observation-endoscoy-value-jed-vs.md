# JP Core Observation Endoscopy Value JED ValueSet - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Endoscopy Value JED ValueSet**

## ValueSet: JP Core Observation Endoscopy Value JED ValueSet 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationEndoscopyValueJed_VS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationEndoscopyValueJed_VS
* **項目**: *Title*
  * **内容**: JP Core Observation Endoscopy Value JED ValueSet
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright JED-Project、JAHIS、日本医療情報学会FHIR国内実装基盤研究会

 
日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectのコード値セットのうち主に「所見（存在所見）」「質的診断」に該当するコード 

 **References** 

* [JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md)

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
  "id" : "jp-observation-endoscoy-value-jed-vs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationEndoscopyValueJed_VS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationEndoscopyValueJed_VS",
  "title" : "JP Core Observation Endoscopy Value JED ValueSet",
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
  "description" : "日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectのコード値セットのうち主に「所見（存在所見）」「質的診断」に該当するコード",
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
  "copyright" : "Copyright JED-Project、JAHIS、日本医療情報学会FHIR国内実装基盤研究会",
  "compose" : {
    "include" : [
      {
        "system" : "urn:oid:1.2.392.200270.4.1000.1"
      }
    ]
  }
}

```
