# JP Core Observation Endoscopy Code ValueSet - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Endoscopy Code ValueSet**

## ValueSet: JP Core Observation Endoscopy Code ValueSet 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationEndoscopyCode_VS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationEndoscopyCode_VS
* **項目**: *Title*
  * **内容**: JP Core Observation Endoscopy Code ValueSet
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright JED-Project、JAHIS、日本医療情報学会FHIR国内実装基盤研究会This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995+, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc

 
Observation（内視鏡）コードで使用する項目値セット。LOINCとJED用語のうち臓器毎のFindings、Diagnosis（Characterization）に該当するコードの組み合わせ 

 **References** 

* [JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "jp-observation-endoscopy-code-vs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationEndoscopyCode_VS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationEndoscopyCode_VS",
  "title" : "JP Core Observation Endoscopy Code ValueSet",
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
  "description" : "Observation（内視鏡）コードで使用する項目値セット。LOINCとJED用語のうち臓器毎のFindings、Diagnosis（Characterization）に該当するコードの組み合わせ",
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
  "copyright" : "Copyright JED-Project、JAHIS、日本医療情報学会FHIR国内実装基盤研究会  \nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995+, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "19778-0",
            "display" : "Indications description Narrative Endoscopy（内視鏡による所見）"
          },
          {
            "code" : "19811-9",
            "display" : "Diagnosis Endoscopy Procedure Narrative（内視鏡による診断）"
          }
        ]
      },
      {
        "system" : "urn:oid:1.2.392.200270.4.1000.1",
        "concept" : [
          {
            "code" : "Z2A20000",
            "display" : "[頭頚部] 所見（存在所見）"
          },
          {
            "code" : "Z2B20000",
            "display" : "[食道] 所見（存在所見）"
          },
          {
            "code" : "Z2B2A000",
            "display" : "食道静脈瘤ー所見詳細"
          },
          {
            "code" : "Z2C20000",
            "display" : "[胃] 所見（存在所見）"
          },
          {
            "code" : "Z2D20000",
            "display" : "[十二指腸] 所見（存在所見）"
          },
          {
            "code" : "Z2F20000",
            "display" : "[主乳頭] 所見（存在所見）"
          },
          {
            "code" : "Z2FA4000",
            "display" : "[主乳頭 - 膵・胆道内視鏡] 所見"
          },
          {
            "code" : "Z2G20000",
            "display" : "[副乳頭] 所見（存在所見）"
          },
          {
            "code" : "Z2H40000",
            "display" : "[胆道] 肉眼型"
          },
          {
            "code" : "Z2H20000",
            "display" : "[胆道] 所見（存在所見）"
          },
          {
            "code" : "Z2H51000",
            "display" : "[胆道] 深達度"
          },
          {
            "code" : "Z2HA4000",
            "display" : "[胆道 - 膵・胆道内視鏡] 所見"
          },
          {
            "code" : "Z2HB0000",
            "display" : "[胆道] ＊超音波所見"
          },
          {
            "code" : "Z2M20000",
            "display" : "[膵] 所見（存在所見）"
          },
          {
            "code" : "Z2M51000",
            "display" : "[膵] 深達度予測"
          },
          {
            "code" : "Z2MA4000",
            "display" : "[膵 - 膵・胆道内視鏡] 所見"
          },
          {
            "code" : "Z2MB0000",
            "display" : "[膵] ＊超音波所見"
          },
          {
            "code" : "Z2J20000",
            "display" : "[小腸] 所見（存在所見）"
          },
          {
            "code" : "Z2L20000",
            "display" : "[大腸] 所見（存在所見）"
          },
          {
            "code" : "Z2A30000",
            "display" : "[頭頚部] 診断（質的診断）"
          },
          {
            "code" : "Z2B30000",
            "display" : "[食道] 診断（質的診断）"
          },
          {
            "code" : "Z2C30000",
            "display" : "[胃] 診断（質的診断）"
          },
          {
            "code" : "Z2D30000",
            "display" : "[十二指腸] 診断（質的診断）"
          },
          {
            "code" : "Z2F30000",
            "display" : "[主乳頭] 診断（質的診断）"
          },
          {
            "code" : "Z2G30000",
            "display" : "[副乳頭] 診断（質的診断）"
          },
          {
            "code" : "Z2H30000",
            "display" : "[胆道] 診断（質的診断）"
          },
          {
            "code" : "Z2HC0000",
            "display" : "[胆道] ＊超音波診断"
          },
          {
            "code" : "Z2HD1000",
            "display" : "[胆道 - 超音波進展度診断] 癌進展度診断"
          },
          {
            "code" : "Z2M30000",
            "display" : "[膵] 診断（質的診断）"
          },
          {
            "code" : "Z2MC0000",
            "display" : "[膵] ＊超音波診断"
          },
          {
            "code" : "Z2MD1000",
            "display" : "[膵 - 超音波進展度診断] 癌進展度診断"
          },
          {
            "code" : "Z2J30000",
            "display" : "[小腸] 診断（質的診断）"
          },
          {
            "code" : "Z2L30000",
            "display" : "[大腸] 診断（質的診断）"
          }
        ]
      }
    ]
  }
}

```
