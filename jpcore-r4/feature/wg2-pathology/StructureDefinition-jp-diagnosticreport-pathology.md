# JP Core DiagnosticReport Pathology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Pathology Profile**

## Resource Profile: JP Core DiagnosticReport Pathology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_Pathology
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport Pathology Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-08-13 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはDiagnosticReportリソースに対して、病理分野の診断レポートのデータを送受信するための制約と拡張を定めたものである。 

**Usages:**

* Refer to this Profile: [JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-pathology.csv), [Excel](StructureDefinition-jp-diagnosticreport-pathology.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-pathology.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-pathology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_Pathology",
  "title" : "JP Core DiagnosticReport Pathology Profile",
  "status" : "active",
  "date" : "2026-08-13T08:49:13+00:00",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、病理分野の診断レポートのデータを送受信するための制約と拡張を定めたものである。",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport",
        "path" : "DiagnosticReport",
        "short" : "病理にて作成された診断レポート。",
        "definition" : "病理にて作成された診断レポート。"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "システムが管理する、施設内で診断レポートを一意に識別するためのID【詳細参照】",
        "definition" : "システムが管理する、施設内で診断レポートを一意に識別するためのID。",
        "comment" : "病理では標本番号（受付番号、病理番号）＋版数を指定する。"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報【詳細参照】",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "short" : "診断レポートのステータス【詳細参照】",
        "definition" : "診断レポートのステータス。",
        "comment" : "preliminary（中間）|final（確定済、承認済）|appended（追加）|amended（修正）|corrected（訂正）"
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "DiagnosticReport.category:first",
        "path" : "DiagnosticReport.category",
        "sliceName" : "first",
        "short" : "診断レポートの分野を表すコード【詳細参照】",
        "definition" : "診断レポートの分野を表すコード。",
        "comment" : "Value Set：JPCore_DiagnosticReport_Categoryの中から「LP7839-6」（Pathology（病理））を指定する。",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "LP7839-6",
              "display" : "病理"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS"
        }
      },
      {
        "id" : "DiagnosticReport.category:first.coding.code",
        "path" : "DiagnosticReport.category.coding.code",
        "min" : 1
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "short" : "病理分野の診断レポートを分類するためのコード【詳細参照】",
        "definition" : "病理分野の診断レポートを分類するためのコード。",
        "comment" : "Value Set：JPCore_DocumentCodeの中から適切な病理分野の報告書のコードを指定する。例：組織診は「11526-1」（病理検査報告書）、細胞診は「47526-9」（細胞診報告書）、剖検は「18743-5」（剖検報告書）を指定する。"
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "診断レポートの対象患者に関する情報【詳細参照】",
        "definition" : "診断レポートの対象患者に関する情報。",
        "comment" : "JP Core Patientリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "short" : "この診断レポートを書くきっかけとなった情報【詳細参照】",
        "definition" : "この診断レポートを書くきっかけとなった情報。",
        "comment" : "JP Core Encounterリソースを参照する。"
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "short" : "診断レポートの作成日時【詳細参照】",
        "definition" : "診断レポートの作成日時。",
        "comment" : "DateTimeを採用する。",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "short" : "レポート確定日時【詳細参照】",
        "definition" : "レポート確定日時。",
        "comment" : "StatusがFinalになった日時を指定する。"
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "short" : "レポートを確定した医師。",
        "definition" : "レポートを確定した医師。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "short" : "この診断レポートの作成者【詳細参照】",
        "definition" : "この診断レポートの作成者。",
        "comment" : "複数いる場合は、列記する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "short" : "この診断レポートの検体に関する情報【詳細参照】",
        "definition" : "この診断レポートの検体に関する情報。",
        "comment" : "JP Core Specimen Pathologyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "この診断レポートの一部となるObservationに関する情報【詳細参照】",
        "definition" : "この診断レポートの一部となるObservationに関する情報。",
        "comment" : "病理では未使用。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "short" : "診断レポートに関連づけれられたDICOM画像に関する情報【詳細参照】",
        "definition" : "診断レポートに関連づけれられたDICOM画像に関する情報。",
        "comment" : "JP Core ImagingStudy Pathologyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.media",
        "path" : "DiagnosticReport.media",
        "short" : "診断レポートに関連づけられたメディアに関する情報【詳細参照】",
        "definition" : "診断レポートに関連づけられたメディアに関する情報。",
        "comment" : "主に、レポートに添付される画像を指す。"
      },
      {
        "id" : "DiagnosticReport.media.comment",
        "path" : "DiagnosticReport.media.comment",
        "short" : "メディアに関するコメント【詳細参照】",
        "definition" : "メディアに関するコメント。",
        "comment" : "以下のいずれかを記載する。参照画像としての添付されたイメージ、診断用スライドをスキャンしたイメージ。"
      },
      {
        "id" : "DiagnosticReport.media.link",
        "path" : "DiagnosticReport.media.link",
        "short" : "メディアの参照先【詳細参照】",
        "definition" : "メディアの参照先。",
        "comment" : "JP Core Media Pathologyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "short" : "総合診断に相当する要約結論【詳細参照】",
        "definition" : "総合診断に相当する要約結論。",
        "comment" : "テキストで可能な限り記載する。"
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "short" : "病理診断レポートの要約結論を表す1つ以上のコード【詳細参照】",
        "definition" : "病理診断レポートの要約結論を表す1つ以上のコード。",
        "comment" : "腫瘍の場合はICD-O-3、腫瘍以外はICD-10、ICD-11の病名を設定する。ただし、運用上コード指定ができない場合、設定されなくてもよい。"
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "short" : "診断レポート本体【詳細参照】",
        "definition" : "診断レポート本体。",
        "comment" : "診断レポート本体をPDF形式やxml形式などで添付する（フォーマットは不問）。",
        "mustSupport" : true
      }
    ]
  }
}

```
