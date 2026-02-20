# JP Core Sibling Birth Order By Gender CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Sibling Birth Order By Gender CodeSystem**

## CodeSystem: JP Core Sibling Birth Order By Gender CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_SiblingBirthOrderByGender_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_SiblingBirthOrderByGender_CS
* **項目**: *Title*
  * **内容**: JP Core Sibling Birth Order By Gender CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-12-01 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
同胞内における性別の出生順名称を定義するCodeSystem。日本国内では、長女、長男、次女、次男など。十男・十女以上の出生順、性の多様性は、コード"#SBO_OTHER"を適用し、text要素に詳述。国際化対応は、designationにより出身国の用語を追加定義することで表現可能。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_SiblingBirthOrderByGender_VS](ValueSet-jp-siblingbirthorderbygender-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-siblingbirthorderbygender-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SiblingBirthOrderByGender_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_SiblingBirthOrderByGender_CS",
  "title" : "JP Core Sibling Birth Order By Gender CodeSystem",
  "status" : "active",
  "experimental" : false,
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
  "description" : "同胞内における性別の出生順名称を定義するCodeSystem。日本国内では、長女、長男、次女、次男など。十男・十女以上の出生順、性の多様性は、コード\"#SBO_OTHER\"を適用し、text要素に詳述。国際化対応は、designationにより出身国の用語を追加定義することで表現可能。",
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
  "content" : "complete",
  "count" : 22,
  "concept" : [
    {
      "code" : "SBO1_M",
      "display" : "長男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Eldest son"
        }
      ]
    },
    {
      "code" : "SBO1_F",
      "display" : "長女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Eldest daughter"
        }
      ]
    },
    {
      "code" : "SBO2_M",
      "display" : "次男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Second son"
        }
      ]
    },
    {
      "code" : "SBO2_F",
      "display" : "次女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Second daughter"
        }
      ]
    },
    {
      "code" : "SBO3_M",
      "display" : "三男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Third son"
        }
      ]
    },
    {
      "code" : "SBO3_F",
      "display" : "三女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Third daughter"
        }
      ]
    },
    {
      "code" : "SBO4_M",
      "display" : "四男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Fourth son"
        }
      ]
    },
    {
      "code" : "SBO4_F",
      "display" : "四女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Fourth daughter"
        }
      ]
    },
    {
      "code" : "SBO5_M",
      "display" : "五男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Fifth son"
        }
      ]
    },
    {
      "code" : "SBO5_F",
      "display" : "五女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Fifth daughter"
        }
      ]
    },
    {
      "code" : "SBO6_M",
      "display" : "六男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Sixth son"
        }
      ]
    },
    {
      "code" : "SBO6_F",
      "display" : "六女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Sixth daughter"
        }
      ]
    },
    {
      "code" : "SBO7_M",
      "display" : "七男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Seventh son"
        }
      ]
    },
    {
      "code" : "SBO7_F",
      "display" : "七女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Seventh daughter"
        }
      ]
    },
    {
      "code" : "SBO8_M",
      "display" : "八男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Eighth son"
        }
      ]
    },
    {
      "code" : "SBO8_F",
      "display" : "八女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Eighth daughter"
        }
      ]
    },
    {
      "code" : "SBO9_M",
      "display" : "九男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Ninth son"
        }
      ]
    },
    {
      "code" : "SBO9_F",
      "display" : "九女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Ninth daughter"
        }
      ]
    },
    {
      "code" : "SBO10_M",
      "display" : "十男",
      "designation" : [
        {
          "language" : "en",
          "value" : "Tenth son"
        }
      ]
    },
    {
      "code" : "SBO10_F",
      "display" : "十女",
      "designation" : [
        {
          "language" : "en",
          "value" : "Tenth daughter"
        }
      ]
    },
    {
      "code" : "SBO_OTHER",
      "display" : "その他（十男・十女以上の出生順、性の多様性、その他の場合はtext要素に詳細を記載）",
      "designation" : [
        {
          "language" : "en",
          "value" : "Other (specify in text for birth order of 11th or higher, gender diversity, or other cases)"
        }
      ]
    },
    {
      "code" : "SBO_NOS",
      "display" : "詳細不明(text要素に詳細を記載)",
      "designation" : [
        {
          "language" : "en",
          "value" : "Unknown (specify in text)"
        }
      ]
    }
  ]
}

```
