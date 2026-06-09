# JP Core Condition Disease Outcome HL7 Table 0241 to SNOMED CT ConceptMap - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Disease Outcome HL7 Table 0241 to SNOMED CT ConceptMap**

## ConceptMap: JP Core Condition Disease Outcome HL7 Table 0241 to SNOMED CT ConceptMap 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_SNOMED
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ConditionDiseaseOutcomeHL70241_to_SNOMED
* **項目**: *Title*
  * **内容**: JP Core Condition Disease Outcome HL7 Table 0241 to SNOMED CT ConceptMap
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: JP Core: Copyright HL7 Japan / SNOMED CT: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists.

 
HL7 v2 Table 0241（Patient Outcome）コードと SNOMED CT との対応マッピング。国際的な相互運用性のための参考マッピングであり、SNOMED CT ライセンスの取得が必要。マッピングの採用にあたっては最新の SNOMED CT リリースでの確認が必要。 

Mapping from [http://jpfhir.jp/fhir/core/CodeSystem/HL70241](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [http://snomed.info/sct](http://hl7.org/fhir/R4/codesystem-snomedct.html)

**Group 1**Mapping from [JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystemversion: 1.3.0-dev)](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [SNOMED CT (all versions)](http://hl7.org/fhir/R4/codesystem-snomedct.html)

* **Source Code**: D (死亡)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 419099009 (Dead (finding))
  * **Comment**: 
* **Source Code**: R (回復)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 371236003 (Patient's condition improved (finding))
  * **Comment**: 「回復」は改善全般を指し、完全回復（F）も含むため、SNOMED CT の「改善」にマップ。完全回復（F）との区別は本マッピングでは #R を wider として扱う。
* **Source Code**: N (回復せず／変わらない)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 271299001 (Patient's condition unchanged (finding))
  * **Comment**: 
* **Source Code**: W (悪化)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 371240007 (Patient's condition worsened (finding))
  * **Comment**: 
* **Source Code**: S (後遺症)
  * **Relationship**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: 302898002 (Sequela (morphologic abnormality))
  * **Comment**: SNOMED CT の Sequela は形態的異常として分類されており、HL70241 の意味と完全一致はしない。代替として 444784007 (Complication of illness) の使用も検討されたい。
* **Source Code**: F (完全に回復した)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 370996005 (Patient's condition resolved (finding))
  * **Comment**: 
* **Source Code**: U (未知)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 261665006 (Unknown (qualifier value))
  * **Comment**: 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "jp-condition-disease-outcome-hl70241-to-snomed",
  "url" : "http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_SNOMED",
  "version" : "1.3.0-dev",
  "name" : "JP_ConditionDiseaseOutcomeHL70241_to_SNOMED",
  "title" : "JP Core Condition Disease Outcome HL7 Table 0241 to SNOMED CT ConceptMap",
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
  "description" : "HL7 v2 Table 0241（Patient Outcome）コードと SNOMED CT との対応マッピング。国際的な相互運用性のための参考マッピングであり、SNOMED CT ライセンスの取得が必要。マッピングの採用にあたっては最新の SNOMED CT リリースでの確認が必要。",
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
  "copyright" : "JP Core: Copyright HL7 Japan / SNOMED CT: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists.",
  "sourceUri" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
  "targetUri" : "http://snomed.info/sct",
  "group" : [
    {
      "source" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
      "sourceVersion" : "1.3.0-dev",
      "target" : "http://snomed.info/sct",
      "element" : [
        {
          "code" : "D",
          "display" : "死亡",
          "target" : [
            {
              "code" : "419099009",
              "display" : "Dead (finding)",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "R",
          "display" : "回復",
          "target" : [
            {
              "code" : "371236003",
              "display" : "Patient's condition improved (finding)",
              "equivalence" : "wider",
              "comment" : "「回復」は改善全般を指し、完全回復（F）も含むため、SNOMED CT の「改善」にマップ。完全回復（F）との区別は本マッピングでは #R を wider として扱う。"
            }
          ]
        },
        {
          "code" : "N",
          "display" : "回復せず／変わらない",
          "target" : [
            {
              "code" : "271299001",
              "display" : "Patient's condition unchanged (finding)",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "W",
          "display" : "悪化",
          "target" : [
            {
              "code" : "371240007",
              "display" : "Patient's condition worsened (finding)",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "S",
          "display" : "後遺症",
          "target" : [
            {
              "code" : "302898002",
              "display" : "Sequela (morphologic abnormality)",
              "equivalence" : "inexact",
              "comment" : "SNOMED CT の Sequela は形態的異常として分類されており、HL70241 の意味と完全一致はしない。代替として 444784007 (Complication of illness) の使用も検討されたい。"
            }
          ]
        },
        {
          "code" : "F",
          "display" : "完全に回復した",
          "target" : [
            {
              "code" : "370996005",
              "display" : "Patient's condition resolved (finding)",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "U",
          "display" : "未知",
          "target" : [
            {
              "code" : "261665006",
              "display" : "Unknown (qualifier value)",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
