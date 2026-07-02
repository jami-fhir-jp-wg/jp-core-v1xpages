# JP Core Birth Order Label CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Birth Order Label CodeSystem**

## CodeSystem: JP Core Birth Order Label CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_BirthOrderLabel_CS
* **項目**: *Title*
  * **内容**: JP Core Birth Order Label CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2026-07-02 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
FamilyMemberHistoryにおいて、家族内で用いられる出生順に基づく呼称（長男、二男、長女、二女など）を表現するためのCodeSystem。これらのコードは患者との続柄そのものではなく、FamilyMemberHistory.relationshipを補足する出生順の呼称を表す。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_BirthOrderLabel_VS](ValueSet-jp-birthorderlabel-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-birthorderlabel-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_BirthOrderLabel_CS",
  "title" : "JP Core Birth Order Label CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T16:06:27+00:00",
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
  "description" : "FamilyMemberHistoryにおいて、家族内で用いられる出生順に基づく呼称（長男、二男、長女、二女など）を表現するためのCodeSystem。これらのコードは患者との続柄そのものではなく、FamilyMemberHistory.relationshipを補足する出生順の呼称を表す。",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 22,
  "property" : [
    {
      "code" : "category",
      "uri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS#category",
      "description" : "出生順呼称の区分。",
      "type" : "code"
    },
    {
      "code" : "order",
      "uri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS#order",
      "description" : "区分内での順位。",
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
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
          "valueCode" : "son"
        },
        {
          "code" : "order",
          "valueInteger" : 10
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
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
          "valueCode" : "daughter"
        },
        {
          "code" : "order",
          "valueInteger" : 10
        }
      ]
    },
    {
      "code" : "other",
      "display" : "other",
      "definition" : "その他（十男・十女以上の出生順、性の多様性、その他の場合はtext要素に詳細を記載）",
      "designation" : [
        {
          "language" : "ja",
          "value" : "その他"
        }
      ]
    },
    {
      "code" : "unknown",
      "display" : "unknown",
      "definition" : "詳細不明(text要素に詳細を記載)",
      "designation" : [
        {
          "language" : "ja",
          "value" : "不明"
        }
      ]
    }
  ]
}

```
