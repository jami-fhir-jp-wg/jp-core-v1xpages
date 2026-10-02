# JP Core HumanName DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core HumanName DataType**

## Data Type Profile: JP Core HumanName DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_HumanName
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_HumanName
* **項目**: *Title*
  * **内容**: JP Core HumanName DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはHumanName DataTypeに対して、患者データを送受信するための基礎となる制約と拡張を定めたものである。 

**Usages:**

* Use this DataType Profile: [JP Core Organization Profile](StructureDefinition-jp-organization.md), [JP Core Patient Profile](StructureDefinition-jp-patient.md) and [JP Core Practitioner Profile](StructureDefinition-jp-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-humanname)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-humanname.csv), [Excel](StructureDefinition-jp-humanname.xlsx), [Schematron](StructureDefinition-jp-humanname.sch) 

## 人名表記に関する説明

### 表記分類

JP_HumanNameは名前の表記分類として[iso21090-EN-representation extension](http://hl7.org/fhir/R4/extension-iso21090-en-representation.html)を0..1の多重度にて拡張として割り当てている。具体的な表記分類に利用されるコードは[valueset-name-v3-representation](http://hl7.org/fhir/R4/valueset-name-v3-representation.html)のValueSetにて３つのコードが指定されている。

* IDE ： 表意文字
 日本語の氏名では、主に漢字氏名に相当するエリアになる。漢字を利用していない氏名についてはひらがなやカタカナ、アルファベットも可能であるが全角を利用すること。
* SYL ： 表音文字
 全角カタカナで記載する。
* ABC ： アルファベット
 日本語の氏名の場合、主にローマ字を割り当てる。ローマ字の記述方法には、ヘボン式と訓令式があるが現在決まりはないが、一般にはヘボン式のほうが利用されることが多い。このエリアを検索等に利用する場合には、規則を決めておくことをお勧めする。

### iso21090-EN-representation extensionの多重度

JP Coreでは国外ベンダーを考慮し、[iso21090-EN-representation extension](http://hl7.org/fhir/R4/extension-iso21090-en-representation.html)の拡張は多重度0を許容している。実装ガイド作成の際は、アプリケーションの実装等やデータ収集の精度を考慮した上で多重度を決定すること。

### textの区切り文字

textには氏名全体を結合し格納する。family、given等の各組み合わせる時の区切り文字は検索時の利便性を考慮し、「半角スペース」で統一する(**SHALL**)。

### 表記分類ごと記述

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| IDE | 表意文字 | 山田 太郎 | 山田 | 太郎 |
| SYL | 表音文字 | ヤマダ タロウ | ヤマダ | タロウ |
| ABC | アルファベット | YAMADA TARO | YAMADA | TARO |

### リソースでの記述例

```
 "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "IDE"
        }
      ],
      "use" : "usual",
      "text" : "山田 太郎",
      "family" : "山田",
      "given" : [
        "太郎"
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "SYL"
        }
      ],
      "use" : "usual",
      "text" : "ヤマダ タロウ",
      "family" : "ヤマダ",
      "given" : [
        "タロウ"
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "ABC"
        }
      ],
      "use" : "usual",
      "text" : "YAMADA TARO",
      "family" : "YAMADA",
      "given" : [
        "TARO"
      ]
    }
  ]


```

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-humanname",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_HumanName",
  "version" : "1.3.0-dev",
  "name" : "JP_HumanName",
  "title" : "JP Core HumanName DataType",
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
  "description" : "このデータタイプはHumanName DataTypeに対して、患者データを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HumanName",
        "path" : "HumanName",
        "short" : "人の名前情報、その一部分と使い方",
        "definition" : "識別のための人の名前情報",
        "comment" : "名前が変更されたり、違っていると指摘されたり、コンテキストによって使われる名前が異なる場合がある。名前は、コンテキストに応じて重要性が異なるさまざまなタイプの部分に分割される場合があり、部分への分割は必ずしも重要ではない。個人名の場合、さまざまな部分に暗黙の意味が含まれている場合と含まれていない場合がある。さまざまな文化が名前の部分にさまざまな重要性を関連付けており、システムが世界中の名前の部分を気にする必要がある程度は大きく異なる。"
      },
      {
        "id" : "HumanName.extension:nameRepresentationUse",
        "path" : "HumanName.extension",
        "sliceName" : "nameRepresentationUse",
        "definition" : "名前の表現方法",
        "comment" : "名前の文字起こし-表現方法（日本の名前など）。",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation|5.3.0"
            ]
          }
        ]
      }
    ]
  }
}

```
