# JP Core Birth Order CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Birth Order CodeSystem**

## CodeSystem: JP Core Birth Order CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrder_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_BirthOrder_CS
* **項目**: *Title*
  * **内容**: JP Core Birth Order CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2026-11-25 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Coreにて定義した家族歴のFamilyMemberHistoryリソースに関する家族内の出生順呼称コード 

 
本コードシステムは、患者との続柄そのものを表すのではなく、`FamilyMemberHistory.relationship`を補足する情報として、家族内で用いられる出生順に基づく呼称を表現するために定義した。 
各コードには機械処理用のプロパティ（`category`：呼称系列、`order`：系列内順位）を付与しており、プログラムによる判定・集計に利用できる。 
[戸籍情報システム標準仕様書【第6.0版】](https://www.moj.go.jp/content/001470510.pdf)に基づき、十九男・十九女まで定義している。第20位以降が必要となった場合は、既存の定義（`son-1`〜`son-19`、`daughter-1`〜`daughter-19`）と同一の命名規則（`son-<順位>`、`daughter-<順位>`）に従って本CodeSystemへconceptを追加して表現すること。追加するconceptの`display`および`designation`も、既存concept（例：長男／first son）と一貫した表記規則に従って付与すること。 
対応する個別 concept が追加されるまでの間は、暫定的に`nec`を使用し、申告された呼称を`CodeableConcept.text`に記載することが望ましい。個別 concept の公開後は、新規記録において当該コードを使用すること。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_BirthOrder_VS](ValueSet-jp-birthorder-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-birthorder-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrder_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_BirthOrder_CS",
  "title" : "JP Core Birth Order CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-25",
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
  "description" : "JP Coreにて定義した家族歴のFamilyMemberHistoryリソースに関する家族内の出生順呼称コード",
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
  "purpose" : "本コードシステムは、患者との続柄そのものを表すのではなく、`FamilyMemberHistory.relationship` を補足する情報として、家族内で用いられる出生順に基づく呼称を表現するために定義した。\n\n各コードには機械処理用のプロパティ（`category`：呼称系列、`order`：系列内順位）を付与しており、プログラムによる判定・集計に利用できる。\n\n[戸籍情報システム標準仕様書【第6.0版】](https://www.moj.go.jp/content/001470510.pdf)に基づき、十九男・十九女まで定義している。第20位以降が必要となった場合は、既存の定義（`son-1`〜`son-19`、`daughter-1`〜`daughter-19`）と同一の命名規則（`son-<順位>`、`daughter-<順位>`）に従って本CodeSystemへconceptを追加して表現すること。追加するconceptの `display` および `designation` も、既存concept（例：長男／first son）と一貫した表記規則に従って付与すること。\n\n対応する個別 concept が追加されるまでの間は、暫定的に `nec` を使用し、申告された呼称を `CodeableConcept.text` に記載することが望ましい。個別 concept の公開後は、新規記録において当該コードを使用すること。",
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 40,
  "property" : [
    {
      "code" : "category",
      "uri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrder_CS#category",
      "description" : "son は男子に用いる呼称系列（長男・次男…）、daughter は女子に用いる呼称系列（長女・次女…）を表す。",
      "type" : "string"
    },
    {
      "code" : "order",
      "uri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrder_CS#order",
      "description" : "系列内での順位（1を最年長とする）。",
      "type" : "integer"
    }
  ],
  "concept" : [
    {
      "code" : "son-1",
      "display" : "first son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "長男"
        },
        {
          "language" : "en",
          "value" : "eldest son"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 1
        }
      ]
    },
    {
      "code" : "son-2",
      "display" : "second son",
      "definition" : "「次男」「二男」のいずれも使用可能である（戸籍の続柄欄では「二男」を使用）。",
      "designation" : [
        {
          "language" : "ja",
          "value" : "二男"
        },
        {
          "language" : "ja",
          "value" : "次男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 2
        }
      ]
    },
    {
      "code" : "son-3",
      "display" : "third son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "三男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 3
        }
      ]
    },
    {
      "code" : "son-4",
      "display" : "fourth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "四男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 4
        }
      ]
    },
    {
      "code" : "son-5",
      "display" : "fifth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "五男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 5
        }
      ]
    },
    {
      "code" : "son-6",
      "display" : "sixth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "六男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 6
        }
      ]
    },
    {
      "code" : "son-7",
      "display" : "seventh son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "七男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 7
        }
      ]
    },
    {
      "code" : "son-8",
      "display" : "eighth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "八男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 8
        }
      ]
    },
    {
      "code" : "son-9",
      "display" : "ninth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "九男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 9
        }
      ]
    },
    {
      "code" : "son-10",
      "display" : "tenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 10
        }
      ]
    },
    {
      "code" : "son-11",
      "display" : "eleventh son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十一男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 11
        }
      ]
    },
    {
      "code" : "son-12",
      "display" : "twelfth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十二男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 12
        }
      ]
    },
    {
      "code" : "son-13",
      "display" : "thirteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十三男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 13
        }
      ]
    },
    {
      "code" : "son-14",
      "display" : "fourteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十四男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 14
        }
      ]
    },
    {
      "code" : "son-15",
      "display" : "fifteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十五男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 15
        }
      ]
    },
    {
      "code" : "son-16",
      "display" : "sixteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十六男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 16
        }
      ]
    },
    {
      "code" : "son-17",
      "display" : "seventeenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十七男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 17
        }
      ]
    },
    {
      "code" : "son-18",
      "display" : "eighteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十八男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 18
        }
      ]
    },
    {
      "code" : "son-19",
      "display" : "nineteenth son",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十九男"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 19
        }
      ]
    },
    {
      "code" : "daughter-1",
      "display" : "first daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "長女"
        },
        {
          "language" : "en",
          "value" : "eldest daughter"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 1
        }
      ]
    },
    {
      "code" : "daughter-2",
      "display" : "second daughter",
      "definition" : "「次女」「二女」のいずれも使用可能である（戸籍の続柄欄では「二女」を使用）。",
      "designation" : [
        {
          "language" : "ja",
          "value" : "二女"
        },
        {
          "language" : "ja",
          "value" : "次女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 2
        }
      ]
    },
    {
      "code" : "daughter-3",
      "display" : "third daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "三女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 3
        }
      ]
    },
    {
      "code" : "daughter-4",
      "display" : "fourth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "四女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 4
        }
      ]
    },
    {
      "code" : "daughter-5",
      "display" : "fifth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "五女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 5
        }
      ]
    },
    {
      "code" : "daughter-6",
      "display" : "sixth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "六女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 6
        }
      ]
    },
    {
      "code" : "daughter-7",
      "display" : "seventh daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "七女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 7
        }
      ]
    },
    {
      "code" : "daughter-8",
      "display" : "eighth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "八女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 8
        }
      ]
    },
    {
      "code" : "daughter-9",
      "display" : "ninth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "九女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 9
        }
      ]
    },
    {
      "code" : "daughter-10",
      "display" : "tenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 10
        }
      ]
    },
    {
      "code" : "daughter-11",
      "display" : "eleventh daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十一女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 11
        }
      ]
    },
    {
      "code" : "daughter-12",
      "display" : "twelfth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十二女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 12
        }
      ]
    },
    {
      "code" : "daughter-13",
      "display" : "thirteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十三女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 13
        }
      ]
    },
    {
      "code" : "daughter-14",
      "display" : "fourteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十四女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 14
        }
      ]
    },
    {
      "code" : "daughter-15",
      "display" : "fifteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十五女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 15
        }
      ]
    },
    {
      "code" : "daughter-16",
      "display" : "sixteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十六女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 16
        }
      ]
    },
    {
      "code" : "daughter-17",
      "display" : "seventeenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十七女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 17
        }
      ]
    },
    {
      "code" : "daughter-18",
      "display" : "eighteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十八女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 18
        }
      ]
    },
    {
      "code" : "daughter-19",
      "display" : "nineteenth daughter",
      "designation" : [
        {
          "language" : "ja",
          "value" : "十九女"
        }
      ],
      "property" : [
        {
          "code" : "category",
          "valueString" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 19
        }
      ]
    },
    {
      "code" : "nec",
      "display" : "not elsewhere classified",
      "definition" : "出生順の呼称はあるが、本CodeSystemの個別コードでは表現できない第二十位以降の個別コードが未収載の場合に用いる。申告された呼称は `CodeableConcept.text` に記載することが望ましい。",
      "designation" : [
        {
          "language" : "ja",
          "value" : "分類不能"
        }
      ]
    },
    {
      "code" : "nos",
      "display" : "not otherwise specified",
      "definition" : "出生順の呼称が、特定されていない場合。",
      "designation" : [
        {
          "language" : "ja",
          "value" : "詳細不明"
        }
      ]
    }
  ]
}

```
