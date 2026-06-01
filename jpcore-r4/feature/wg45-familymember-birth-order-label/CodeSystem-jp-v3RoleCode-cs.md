# JP Core FamilyMember CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMember CodeSystem**

## CodeSystem: JP Core FamilyMember CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/Common/CodeSystem/JP_V3RoleCode_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_V3RoleCode_CS
* **項目**: *Title*
  * **内容**: JP Core FamilyMember CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-03-31 )
* **項目**: *Copyright*
  * **内容**: （一社）日本医療情報学会. CC BY-ND 4.0

 
http://terminology.ht7.org/Codesystem/v3-RoleCode where concept is-a FAMMEB の日本語補足 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem Supplement is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

!!このコードシステム は次のコードに displays を定義します:

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-v3RoleCode-cs",
  "url" : "http://jpfhir.jp/fhir/Common/CodeSystem/JP_V3RoleCode_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_V3RoleCode_CS",
  "title" : "JP Core FamilyMember CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-03-31",
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
  "description" : "http://terminology.ht7.org/Codesystem/v3-RoleCode where concept is-a FAMMEB の日本語補足",
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
  "copyright" : "（一社）日本医療情報学会. CC BY-ND 4.0",
  "content" : "supplement",
  "supplements" : "http://terminology.ht7.org/Codesystem/v3-RoleCode",
  "concept" : [
    {
      "code" : "FAMMEMB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "家族"
        }
      ]
    },
    {
      "code" : "CHILD",
      "designation" : [
        {
          "language" : "ja",
          "value" : "子供"
        }
      ]
    },
    {
      "code" : "CHLDADOPT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養子"
        }
      ]
    },
    {
      "code" : "DAUADOPT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養女"
        }
      ]
    },
    {
      "code" : "SONADOPT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養子（男子）"
        }
      ]
    },
    {
      "code" : "CHLDFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "里子"
        }
      ]
    },
    {
      "code" : "DAUFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "里子（女子）"
        }
      ]
    },
    {
      "code" : "SONFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "里子（男子）"
        }
      ]
    },
    {
      "code" : "DAUC",
      "designation" : [
        {
          "language" : "ja",
          "value" : "娘"
        }
      ]
    },
    {
      "code" : "DAU",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実娘"
        }
      ]
    },
    {
      "code" : "STPDAU",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継娘"
        }
      ]
    },
    {
      "code" : "NCHILD",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実子"
        }
      ]
    },
    {
      "code" : "SON",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実息子"
        }
      ]
    },
    {
      "code" : "SONC",
      "designation" : [
        {
          "language" : "ja",
          "value" : "息子"
        }
      ]
    },
    {
      "code" : "STPSON",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継息子"
        }
      ]
    },
    {
      "code" : "STPCHLD",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継子"
        }
      ]
    },
    {
      "code" : "EXT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "親族（直系血族を除く）"
        }
      ]
    },
    {
      "code" : "AUNT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "おば"
        }
      ]
    },
    {
      "code" : "MAUNT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方のおば"
        }
      ]
    },
    {
      "code" : "PAUNT",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方のおば"
        }
      ]
    },
    {
      "code" : "COUSN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "いとこ"
        }
      ]
    },
    {
      "code" : "MCOUSN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方のいとこ"
        }
      ]
    },
    {
      "code" : "PCOUSN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方のいとこ"
        }
      ]
    },
    {
      "code" : "GGRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "曽祖父母"
        }
      ]
    },
    {
      "code" : "GGRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "曽祖父"
        }
      ]
    },
    {
      "code" : "MGGRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の曽祖父"
        }
      ]
    },
    {
      "code" : "PGGRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の曽祖父"
        }
      ]
    },
    {
      "code" : "GGRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "曾祖母"
        }
      ]
    },
    {
      "code" : "MGGRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の曾祖母"
        }
      ]
    },
    {
      "code" : "PGGRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の曾祖母"
        }
      ]
    },
    {
      "code" : "MGGRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の曽祖父母"
        }
      ]
    },
    {
      "code" : "PGGRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の曽祖父母"
        }
      ]
    },
    {
      "code" : "GRNDCHILD",
      "designation" : [
        {
          "language" : "ja",
          "value" : "孫"
        }
      ]
    },
    {
      "code" : "GRNDDAU",
      "designation" : [
        {
          "language" : "ja",
          "value" : "孫娘"
        }
      ]
    },
    {
      "code" : "GRNDSON",
      "designation" : [
        {
          "language" : "ja",
          "value" : "孫息子"
        }
      ]
    },
    {
      "code" : "GRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "祖父母"
        }
      ]
    },
    {
      "code" : "GRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "祖父"
        }
      ]
    },
    {
      "code" : "MGRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の祖父"
        }
      ]
    },
    {
      "code" : "PGRFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の祖父"
        }
      ]
    },
    {
      "code" : "GRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "祖母"
        }
      ]
    },
    {
      "code" : "MGRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の祖母"
        }
      ]
    },
    {
      "code" : "PGRMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の祖母"
        }
      ]
    },
    {
      "code" : "MGRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方の祖父母"
        }
      ]
    },
    {
      "code" : "PGRPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方の祖父母"
        }
      ]
    },
    {
      "code" : "INLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理"
        }
      ]
    },
    {
      "code" : "CHLDINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の子供"
        }
      ]
    },
    {
      "code" : "DAUINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の娘"
        }
      ]
    },
    {
      "code" : "SONINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の息子"
        }
      ]
    },
    {
      "code" : "PRNINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の親"
        }
      ]
    },
    {
      "code" : "FTHINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の父"
        }
      ]
    },
    {
      "code" : "MTHINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の母"
        }
      ]
    },
    {
      "code" : "SIBINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の兄弟"
        }
      ]
    },
    {
      "code" : "BROINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の兄"
        }
      ]
    },
    {
      "code" : "SISINLAW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の姉"
        }
      ]
    },
    {
      "code" : "NIENEPH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "甥姪"
        }
      ]
    },
    {
      "code" : "NEPHEW",
      "designation" : [
        {
          "language" : "ja",
          "value" : "甥"
        }
      ]
    },
    {
      "code" : "NIECE",
      "designation" : [
        {
          "language" : "ja",
          "value" : "姪"
        }
      ]
    },
    {
      "code" : "UNCLE",
      "designation" : [
        {
          "language" : "ja",
          "value" : "おじ"
        }
      ]
    },
    {
      "code" : "MUNCLE",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母方のおじ"
        }
      ]
    },
    {
      "code" : "PUNCLE",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父方のおじ"
        }
      ]
    },
    {
      "code" : "PRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "親"
        }
      ]
    },
    {
      "code" : "ADOPTP",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養父母"
        }
      ]
    },
    {
      "code" : "ADOPTF",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養父"
        }
      ]
    },
    {
      "code" : "ADOPTM",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養母"
        }
      ]
    },
    {
      "code" : "FTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "父"
        }
      ]
    },
    {
      "code" : "FTHFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養父"
        }
      ]
    },
    {
      "code" : "NFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実父"
        }
      ]
    },
    {
      "code" : "NFTHF",
      "designation" : [
        {
          "language" : "ja",
          "value" : "胎児の実父"
        }
      ]
    },
    {
      "code" : "STPFTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継父"
        }
      ]
    },
    {
      "code" : "MTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "母親"
        }
      ]
    },
    {
      "code" : "GESTM",
      "designation" : [
        {
          "language" : "ja",
          "value" : "代理の母"
        }
      ]
    },
    {
      "code" : "MTHFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "養母"
        }
      ]
    },
    {
      "code" : "NMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実母"
        }
      ]
    },
    {
      "code" : "NMTHF",
      "designation" : [
        {
          "language" : "ja",
          "value" : "胎児の実母"
        }
      ]
    },
    {
      "code" : "STPMTH",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継母"
        }
      ]
    },
    {
      "code" : "NPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実の親"
        }
      ]
    },
    {
      "code" : "PRNFOST",
      "designation" : [
        {
          "language" : "ja",
          "value" : "里親"
        }
      ]
    },
    {
      "code" : "STPPRN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継親"
        }
      ]
    },
    {
      "code" : "SIB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "同胞（兄弟姉妹）"
        }
      ]
    },
    {
      "code" : "BRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "兄弟"
        }
      ]
    },
    {
      "code" : "HBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "半同胞の兄弟"
        }
      ]
    },
    {
      "code" : "NBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実の兄弟（完全同胞の兄弟）"
        }
      ]
    },
    {
      "code" : "TWINBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "双子の兄弟"
        }
      ]
    },
    {
      "code" : "FTWINBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "二卵性双生児の兄弟"
        }
      ]
    },
    {
      "code" : "ITWINBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "一卵性双生児の兄弟"
        }
      ]
    },
    {
      "code" : "STPBRO",
      "designation" : [
        {
          "language" : "ja",
          "value" : "義理の兄弟"
        }
      ]
    },
    {
      "code" : "HSIB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "半同胞"
        }
      ]
    },
    {
      "code" : "HSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "半同胞の姉妹"
        }
      ]
    },
    {
      "code" : "NSIB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "完全同胞"
        }
      ]
    },
    {
      "code" : "NSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "実の姉妹（完全同胞の姉妹）"
        }
      ]
    },
    {
      "code" : "TWINSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "双子の姉妹"
        }
      ]
    },
    {
      "code" : "FTWINSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "二卵性双生児の姉妹"
        }
      ]
    },
    {
      "code" : "ITWINSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "一卵性双生児の姉妹"
        }
      ]
    },
    {
      "code" : "TWIN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "双子"
        }
      ]
    },
    {
      "code" : "FTWIN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "二卵性双生児"
        }
      ]
    },
    {
      "code" : "ITWIN",
      "designation" : [
        {
          "language" : "ja",
          "value" : "一卵性双生児"
        }
      ]
    },
    {
      "code" : "SIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "姉妹"
        }
      ]
    },
    {
      "code" : "STPSIS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継姉妹"
        }
      ]
    },
    {
      "code" : "STPSIB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "継親の子"
        }
      ]
    },
    {
      "code" : "SIGOTHR",
      "designation" : [
        {
          "language" : "ja",
          "value" : "重要なパートナー"
        }
      ]
    },
    {
      "code" : "DOMPART",
      "designation" : [
        {
          "language" : "ja",
          "value" : "内縁のパートナー"
        }
      ]
    },
    {
      "code" : "FMRSPS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "元配偶者"
        }
      ]
    },
    {
      "code" : "SPS",
      "designation" : [
        {
          "language" : "ja",
          "value" : "配偶者"
        }
      ]
    },
    {
      "code" : "HUSB",
      "designation" : [
        {
          "language" : "ja",
          "value" : "夫"
        }
      ]
    },
    {
      "code" : "WIFE",
      "designation" : [
        {
          "language" : "ja",
          "value" : "妻"
        }
      ]
    }
  ]
}

```
