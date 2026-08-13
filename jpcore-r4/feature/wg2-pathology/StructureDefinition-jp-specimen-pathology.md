# JP Core Specimen Pathology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Specimen Pathology Profile**

## Resource Profile: JP Core Specimen Pathology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Pathology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Specimen_Pathology
* **項目**: *Title*
  * **内容**: JP Core Specimen Pathology Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-08-13 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはSpecimenリソースに対して、病理診断レポートにおいて臓器そのものを表現する検体情報のデータを送受信するための制約と拡張を定めたものである。 

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md) and [JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-specimen-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-specimen-pathology.csv), [Excel](StructureDefinition-jp-specimen-pathology.xlsx), [Schematron](StructureDefinition-jp-specimen-pathology.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-specimen-pathology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Pathology",
  "version" : "1.3.0-dev",
  "name" : "JP_Specimen_Pathology",
  "title" : "JP Core Specimen Pathology Profile",
  "status" : "active",
  "date" : "2026-08-13T13:00:31+00:00",
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
  "description" : "このプロファイルはSpecimenリソースに対して、病理診断レポートにおいて臓器そのものを表現する検体情報のデータを送受信するための制約と拡張を定めたものである。",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen",
        "path" : "Specimen",
        "short" : "病理診断レポートにおいて臓器そのものを表現する検体情報",
        "definition" : "病理診断レポートにおいて臓器そのものを表現する検体情報"
      },
      {
        "id" : "Specimen.identifier",
        "path" : "Specimen.identifier",
        "short" : "オーダ側（依頼元）が発番した検体識別番号",
        "definition" : "オーダ側（依頼元）が発番した検体識別番号"
      },
      {
        "id" : "Specimen.accessionIdentifier",
        "path" : "Specimen.accessionIdentifier",
        "short" : "病理検査側で発番した検体識別番号",
        "definition" : "病理検査側で発番した検体識別番号"
      },
      {
        "id" : "Specimen.status",
        "path" : "Specimen.status",
        "short" : "検体の利用可能性",
        "definition" : "検体の利用可能性"
      },
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "short" : "検査材料",
        "definition" : "検査材料"
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "short" : "検体採取した患者リソース（JP_Patient）を参照",
        "definition" : "検体採取した患者リソース（JP_Patient）を参照",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Specimen.receivedTime",
        "path" : "Specimen.receivedTime",
        "short" : "検体の受付日時",
        "definition" : "検体の受付日時"
      },
      {
        "id" : "Specimen.parent",
        "path" : "Specimen.parent",
        "short" : "使用しない",
        "definition" : "使用しない"
      },
      {
        "id" : "Specimen.request",
        "path" : "Specimen.request",
        "short" : "依頼目的。病理検査依頼元を示すServiceRequestリソースを参照",
        "definition" : "依頼目的。病理検査依頼元を示すServiceRequestリソースを参照"
      },
      {
        "id" : "Specimen.collection",
        "path" : "Specimen.collection",
        "short" : "検体採取に関する詳細情報",
        "definition" : "検体採取に関する詳細情報"
      },
      {
        "id" : "Specimen.collection.collector",
        "path" : "Specimen.collection.collector",
        "short" : "検体採取した人",
        "definition" : "検体採取した人"
      },
      {
        "id" : "Specimen.collection.collected[x]",
        "path" : "Specimen.collection.collected[x]",
        "short" : "検体採取日時",
        "definition" : "検体採取日時",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Specimen.collection.duration",
        "path" : "Specimen.collection.duration",
        "short" : "検体採取期間",
        "definition" : "検体採取期間"
      },
      {
        "id" : "Specimen.collection.quantity",
        "path" : "Specimen.collection.quantity",
        "short" : "検体量",
        "definition" : "検体量"
      },
      {
        "id" : "Specimen.collection.method",
        "path" : "Specimen.collection.method",
        "short" : "採取方法",
        "definition" : "採取方法"
      },
      {
        "id" : "Specimen.collection.bodySite",
        "path" : "Specimen.collection.bodySite",
        "short" : "検体部位",
        "definition" : "検体部位"
      },
      {
        "id" : "Specimen.collection.fastingStatus[x]",
        "path" : "Specimen.collection.fastingStatus[x]",
        "short" : "使用しない",
        "definition" : "使用しない"
      },
      {
        "id" : "Specimen.processing",
        "path" : "Specimen.processing",
        "short" : "未使用",
        "definition" : "未使用"
      },
      {
        "id" : "Specimen.container",
        "path" : "Specimen.container",
        "short" : "未使用",
        "definition" : "未使用"
      },
      {
        "id" : "Specimen.condition",
        "path" : "Specimen.condition",
        "short" : "未使用",
        "definition" : "未使用"
      },
      {
        "id" : "Specimen.note",
        "path" : "Specimen.note",
        "short" : "検体に関する特記事項を記載",
        "definition" : "検体に関する特記事項を記載"
      }
    ]
  }
}

```
