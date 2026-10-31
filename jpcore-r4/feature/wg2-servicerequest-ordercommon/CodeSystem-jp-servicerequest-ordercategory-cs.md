# JP Core ServiceRequest Order Category CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Category CodeSystem**

## CodeSystem: JP Core ServiceRequest Order Category CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequest_OrderCategory_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_OrderCategory_CS
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Order Category CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2026-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Coreにて定義したオーダ種別コード 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ServiceRequest_OrderCategory_VS](ValueSet-jp-servicerequest-ordercategory-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-servicerequest-ordercategory-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequest_OrderCategory_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_OrderCategory_CS",
  "title" : "JP Core ServiceRequest Order Category CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-31",
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
  "description" : "JP Coreにて定義したオーダ種別コード",
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
  "copyright" : "Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 28,
  "concept" : [
    {
      "code" : "consultation",
      "display" : "コンサルテーション"
    },
    {
      "code" : "counselling",
      "display" : "カウンセリング"
    },
    {
      "code" : "drug",
      "display" : "薬剤",
      "concept" : [
        {
          "code" : "injection",
          "display" : "注射"
        },
        {
          "code" : "prescription",
          "display" : "処方"
        }
      ]
    },
    {
      "code" : "education",
      "display" : "教育",
      "concept" : [
        {
          "code" : "medication-counselling",
          "display" : "服薬指導"
        },
        {
          "code" : "nutritionist-education",
          "display" : "栄養指導"
        }
      ]
    },
    {
      "code" : "imaging",
      "display" : "画像",
      "concept" : [
        {
          "code" : "radiology",
          "display" : "放射線検査"
        },
        {
          "code" : "RI",
          "display" : "核医学検査"
        }
      ]
    },
    {
      "code" : "laboratory",
      "display" : "検体検査",
      "concept" : [
        {
          "code" : "labratory-test",
          "display" : "検体検査"
        },
        {
          "code" : "microbiology",
          "display" : "微生物学的検査"
        },
        {
          "code" : "pathological-test",
          "display" : "病理検査"
        },
        {
          "code" : "physiological-test",
          "display" : "生理検査"
        }
      ]
    },
    {
      "code" : "nutrition",
      "display" : "食事"
    },
    {
      "code" : "procedure",
      "display" : "処置",
      "concept" : [
        {
          "code" : "anesthesia",
          "display" : "麻酔"
        },
        {
          "code" : "conditional-order",
          "display" : "条件付き指示"
        },
        {
          "code" : "dental-procedure",
          "display" : "歯科処置"
        },
        {
          "code" : "dialysis",
          "display" : "透析"
        },
        {
          "code" : "endoscopy",
          "display" : "内視鏡検査"
        },
        {
          "code" : "general-procedure",
          "display" : "処置"
        },
        {
          "code" : "radiotherapy",
          "display" : "放射線治療"
        },
        {
          "code" : "rehab",
          "display" : "リハビリテーション"
        },
        {
          "code" : "surgery",
          "display" : "手術"
        },
        {
          "code" : "transfusion",
          "display" : "輸血"
        }
      ]
    }
  ]
}

```
