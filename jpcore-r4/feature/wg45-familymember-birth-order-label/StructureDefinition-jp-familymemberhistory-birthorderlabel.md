# JP Core FamilyMemberHistory Birth Order Label Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Birth Order Label Extension**

## Extension: JP Core FamilyMemberHistory Birth Order Label Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_FamilyMemberHistory_BirthOrderLabel
* **項目**: *Title*
  * **内容**: JP Core FamilyMemberHistory Birth Order Label Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-12-01 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

続柄（relationship）を補足し、家族内で用いられる出生順に基づく呼称（長男、二男、長女、二女など）を表現する。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)
* Examples for this Extension: [FamilyMemberHistory/jp-familymemberhistory-example-2](FamilyMemberHistory-jp-familymemberhistory-example-2.md) and [FamilyMemberHistory/jp-familymemberhistory-example-4](FamilyMemberHistory-jp-familymemberhistory-example-4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-familymemberhistory-birthorderlabel)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-familymemberhistory-birthorderlabel.csv), [Excel](StructureDefinition-jp-familymemberhistory-birthorderlabel.xlsx), [Schematron](StructureDefinition-jp-familymemberhistory-birthorderlabel.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-familymemberhistory-birthorderlabel",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel",
  "version" : "1.3.0-dev",
  "name" : "JP_FamilyMemberHistory_BirthOrderLabel",
  "title" : "JP Core FamilyMemberHistory Birth Order Label Extension",
  "status" : "active",
  "date" : "2025-12-01",
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
  "description" : "続柄（relationship）を補足し、家族内で用いられる出生順に基づく呼称（長男、二男、長女、二女など）を表現する。",
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
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "FamilyMemberHistory"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "出生順（呼称）",
        "definition" : "FamilyMemberHistoryにおいて、対象となる家族構成員について、家族内で用いられる出生順に基づく呼称を表現する。これは、患者との続柄そのものを置き換えるものではなく、FamilyMemberHistory.relationshipで表現される続柄を補足する情報である。日常の臨床では家族の氏名まで聴取されずに、長女、二男などの呼称で記述され、関係者全員の生年月日や年齢も聴取できない場合が多いことを想定している。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "出生順呼称（CodeableConcept）",
        "definition" : "出生順の呼称（長男、長女、二男、二女）を表す。国際化対応の対応のため、designation により対象者の出身国の用語を追加定義できる。",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_BirthOrderLabel_VS"
        }
      }
    ]
  }
}

```
