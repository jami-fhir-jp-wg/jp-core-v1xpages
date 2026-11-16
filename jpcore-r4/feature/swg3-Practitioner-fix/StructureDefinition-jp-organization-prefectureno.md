# JP Core Organization PrefectureNo Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization PrefectureNo Extension**

## Extension: JP Core Organization PrefectureNo Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Organization_PrefectureNo
* **項目**: *Title*
  * **内容**: JP Core Organization PrefectureNo Extension
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

都道府県番号２桁を表現するためのExtension。 JP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Organization Profile](StructureDefinition-jp-organization.md)
* Examples for this Extension: [太郎花子クリニック](Organization-jp-organization-example-clinic.md) and [健康第一病院](Organization-jp-organization-example-hospital.md)
* Search Parameters using this Extension: [JP_Organization_PrefectureNo_SP](SearchParameter-jp-organization-prefectureno-sp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-organization-prefectureno)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-organization-prefectureno.csv), [Excel](StructureDefinition-jp-organization-prefectureno.xlsx), [Schematron](StructureDefinition-jp-organization-prefectureno.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-organization-prefectureno",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo",
  "version" : "1.3.0-dev",
  "name" : "JP_Organization_PrefectureNo",
  "title" : "JP Core Organization PrefectureNo Extension",
  "status" : "active",
  "date" : "2023-10-31",
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
  "description" : "都道府県番号２桁を表現するためのExtension。\nJP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である",
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
      "expression" : "Organization"
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
        "short" : "都道府県番号2桁【詳細参照】",
        "definition" : "都道府県番号２桁を表現するためのExtension。\nJP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である",
        "comment" : "都道府県番号２桁。Identifier型の拡張を使用する。  \nvalueには都道府県番号2桁の値を格納し、systemには都道府県番号を表すOID「1http://jpfhir.jp/fhir/core/mhlw/CodeSystem/PrefectureNo-2digits」を指定する。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PrefectureNumber_VS"
        }
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "definition" : "都道府県番号の名前空間を識別するURIを指定"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "definition" : "都道府県番号コード。 例）北海道　 \"01\""
      }
    ]
  }
}

```
