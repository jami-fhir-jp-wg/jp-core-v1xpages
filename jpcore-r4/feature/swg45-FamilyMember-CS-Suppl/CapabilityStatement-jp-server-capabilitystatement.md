# JP Core Server CapabilityStatement - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Server CapabilityStatement**

## CapabilityStatement: JP Core Server CapabilityStatement 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CapabilityStatement/JP_Server_CapabilityStatement
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Server_CapabilityStatement
* **項目**: *Title*
  * **内容**: JP Core Server CapabilityStatement
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Core実装ガイドを利用したサイトを作成する際にサーバ側で規定するCapabilityStatementのOperationsおよびSearch Parametersのリスト例を提示する。JP Core ServerがサポートするFHIRプロファイルに限定しているため、FHIR Baseのプロファイルを利用する際などは必要な項目を追記すること。 

この章ではJP Core Requestor[クライアント]から発行される問い合わせに対して応答する責務のある、JP Core Serverに要求される機能(expected capabilities)について記載する。
 JP Core Serverによってサポートされる FHIR プロファイル・RESTful操作・検索パラメータの完全なリストを定義する。
 JP Core Clientは個別のユースケースや意味的な要請に応じてこれらのリストを通じて必要なデータにアクセスすることができる。

## FHIR RESTful Capabilities

* JP Coreは以下の要件を必須とする(**SHALL**) 
* FHIR仕様に基づくRESTfulなふるまいの実装
 
* 以下のレスポンスクラスを返すこと 
* (Status 400): invalid parameter
* (Status 401/4xx): unauthorized request
* (Status 403): insufficient scope
* (Status 404): unknown resource
* (Status 410): deleted resource.
 
* 全てのJP Core interactionにおいてjson記述をサポートすること(**SHOULD**)
* JP Coreは以下の要件を満たすべきである(**SHOULD**) 
* 各インスタンス を、FHIR meta.profile 属性の一部としてサポートされる JP Core profileとして認識すること
 
* セキュリティ 
* See the General Security Considerations section for requirements and recommendations.
* サーバはunauthorizedなリクエストに対してはHTTP 401を返さなければならない。(**SHALL**)
 

## RESTful Capabilities by Resource/Profile:

 [Raw OpenAPI-Swagger Definition file](jp-server-capabilitystatement.openapi.json) | [Download](jp-server-capabilitystatement.openapi.json) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "jp-server-capabilitystatement",
  "url" : "http://jpfhir.jp/fhir/core/CapabilityStatement/JP_Server_CapabilityStatement",
  "version" : "1.3.0-dev",
  "name" : "JP_Server_CapabilityStatement",
  "title" : "JP Core Server CapabilityStatement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-30",
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
  "description" : "JP Core実装ガイドを利用したサイトを作成する際にサーバ側で規定するCapabilityStatementのOperationsおよびSearch Parametersのリスト例を提示する。JP Core ServerがサポートするFHIRプロファイルに限定しているため、FHIR Baseのプロファイルを利用する際などは必要な項目を追記すること。",
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
  "kind" : "requirements",
  "instantiates" : [
    "http://jpfhir.jp/fhir/core/CapabilityStatement/JP_Server_CapabilityStatement"
  ],
  "fhirVersion" : "4.0.1",
  "format" : ["json", "xml"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "birthdate"
                },
                {
                  "url" : "required",
                  "valueString" : "name"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "birthdate"
                },
                {
                  "url" : "required",
                  "valueString" : "gender"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "birthdate"
                },
                {
                  "url" : "required",
                  "valueString" : "name"
                },
                {
                  "url" : "required",
                  "valueString" : "gender"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "name"
                },
                {
                  "url" : "required",
                  "valueString" : "phone"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "name"
                },
                {
                  "url" : "required",
                  "valueString" : "address-postalcode"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "family"
                },
                {
                  "url" : "required",
                  "valueString" : "given"
                },
                {
                  "url" : "required",
                  "valueString" : "birthdate"
                },
                {
                  "url" : "required",
                  "valueString" : "gender"
                },
                {
                  "url" : "required",
                  "valueString" : "phone"
                },
                {
                  "url" : "required",
                  "valueString" : "address-postalcode"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Patient",
          "supportedProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Patient-name",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "family",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "given",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "birthdate",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-birthdate",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "gender",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-gender",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "phone",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-phone",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "address-postalcode",
              "definition" : "http://hl7.org/fhir/SearchParameter/individual-address-postalcode",
              "type" : "string"
            }
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "everything",
              "definition" : "http://hl7.org/fhir/OperationDefinition/Patient-everything",
              "documentation" : "この操作が呼び出された場合、すべての患者の、あるいは指定された特定の[id]をもつPatientに関連した全てのリソースを返す。"
            }
          ]
        },
        {
          "type" : "Coverage",
          "supportedProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage"],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "beneficiary",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-beneficiary",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "class-type",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-class-type",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "class-value",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-class-value",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "dependent",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-dependent",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "payor",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-payor",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "policy-holder",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-policy-holder",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "subscriber",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-subscriber",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-type",
              "type" : "token"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "class"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "type"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Encounter",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "class",
              "definition" : "http://hl7.org/fhir/SearchParameter/Encounter-class",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Encounter-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
              "type" : "token"
            }
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "everything",
              "definition" : "http://hl7.org/fhir/OperationDefinition/Encounter-everything",
              "documentation" : "この操作は、この操作が呼び出された特定のEncounterリソースに関連する全ての情報を返す。"
            }
          ]
        },
        {
          "type" : "Location",
          "supportedProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-name",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-address",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "address-city",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-address-city",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "address-state",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-address-state",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "address-postalcode",
              "definition" : "http://hl7.org/fhir/SearchParameter/Location-address-postalcode",
              "type" : "string"
            }
          ]
        },
        {
          "type" : "Organization",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "address",
              "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address",
              "type" : "string"
            }
          ]
        },
        {
          "type" : "Practitioner",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "name",
              "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-name",
              "type" : "string"
            }
          ]
        },
        {
          "type" : "PractitionerRole",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "specialty",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "practitioner",
              "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner",
              "type" : "reference"
            }
          ]
        },
        {
          "type" : "Medication",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Medication-identifier",
              "type" : "token"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "authoredon"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "jp-medication-start"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "authoredon"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "requester"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "MedicationRequest",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "authoredon",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/medications-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "requester",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationRequest-requester",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "jp-medication-start",
              "definition" : "http://jpfhir.jp/fhir/core/SearchParameter/JP_MedicationRequest_Start_SP",
              "type" : "date"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "whenhandedover"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "whenhandedover"
                },
                {
                  "url" : "required",
                  "valueString" : "whenprepared"
                },
                {
                  "url" : "required",
                  "valueString" : "context"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "performer"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "MedicationDispense",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense_Injection"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "whenhandedover",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationDispense-whenhandedover",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "whenprepared",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationDispense-whenprepared",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationDispense-performer",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "context",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationDispense-context",
              "type" : "reference"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "effective-time"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "effective-time"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "performer"
                },
                {
                  "url" : "required",
                  "valueString" : "request"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "MedicationAdministration",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "effective-time",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationAdministration-effective-time",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationAdministration-performer",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "request",
              "definition" : "http://hl7.org/fhir/SearchParameter/MedicationAdministration-request",
              "type" : "reference"
            }
          ]
        },
        {
          "type" : "MedicationStatement",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement_Injection"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "lot-number"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Immunization",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "lot-number",
              "definition" : "http://hl7.org/fhir/SearchParameter/Immunization-lot-number",
              "type" : "string"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "based-on"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "value-quantity"
                },
                {
                  "url" : "required",
                  "valueString" : "based-on"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "value-concept"
                },
                {
                  "url" : "required",
                  "valueString" : "based-on"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                },
                {
                  "url" : "required",
                  "valueString" : "value-string"
                },
                {
                  "url" : "required",
                  "valueString" : "based-on"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-quantity"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-concept"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-string"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code-value-concept"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "code-value-concept"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "code-value-concept"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-quantity"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-quantity"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "code"
                },
                {
                  "url" : "required",
                  "valueString" : "value-quantity"
                },
                {
                  "url" : "required",
                  "valueString" : "encounter"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Observation",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Microbiology",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_SocialHistory",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Electrocardiogram",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Findings",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Impression",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Endoscopy"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "encounter",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "value-quantity",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-quantity",
              "type" : "quantity"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-concept",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "value-string",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-value-string",
              "type" : "string"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "based-on",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-based-on",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code-value-concept",
              "definition" : "http://hl7.org/fhir/SearchParameter/Observation-code-value-concept",
              "type" : "composite"
            }
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "lastn",
              "definition" : "http://hl7.org/fhir/OperationDefinition/Observation-lastn",
              "documentation" : "オペレーションはある条件に基づく最新、または最新からn件の検査結果/測定結果等を取得するという一般的なニーズを満たすためのオペレーションである。"
            }
          ]
        },
        {
          "type" : "Specimen",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Specimen-identifier",
              "type" : "token"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "modality"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "created"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "modality"
                },
                {
                  "url" : "required",
                  "valueString" : "created"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Media",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Endoscopy"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/Media-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/Media-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "modality",
              "definition" : "http://hl7.org/fhir/SearchParameter/Media-modality",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "created",
              "definition" : "http://hl7.org/fhir/SearchParameter/Media-created",
              "type" : "date"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "modality"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "bodysite"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "started"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "started"
                },
                {
                  "url" : "required",
                  "valueString" : "modality"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "started"
                },
                {
                  "url" : "required",
                  "valueString" : "modality"
                },
                {
                  "url" : "required",
                  "valueString" : "bodysite"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "ImagingStudy",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Endoscopy"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/ImagingStudy-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "encounter",
              "definition" : "http://hl7.org/fhir/SearchParameter/ImagingStudy-encounter",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "modality",
              "definition" : "http://hl7.org/fhir/SearchParameter/ImagingStudy-modality",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "bodysite",
              "definition" : "http://hl7.org/fhir/SearchParameter/ImagingStudy-bodysite",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "started",
              "definition" : "http://hl7.org/fhir/SearchParameter/ImagingStudy-started",
              "type" : "date"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "based-on"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "DiagnosticReport",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_LabResult",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Microbiology",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Radiology",
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Endoscopy"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "issued",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-performer",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "based-on",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "conclusion",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "encounter",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "media",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-media",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "result",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-result",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "results-interpreter",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-results-interpreter",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "specimen",
              "definition" : "http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen",
              "type" : "reference"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "clinical-status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "verification-status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "type"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "criticality"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "AllergyIntolerance",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "clinical-status",
              "definition" : "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-clinical-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "verification-status",
              "definition" : "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-verification-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "criticality",
              "definition" : "http://hl7.org/fhir/SearchParameter/AllergyIntolerance-criticality",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "type",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-type",
              "type" : "token"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "onset-date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "clinical-status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "verification-status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "category"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Condition",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "clinical-status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Condition-clinical-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "onset-date",
              "definition" : "http://hl7.org/fhir/SearchParameter/Condition-onset-date",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/Condition-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "verification-status",
              "definition" : "http://hl7.org/fhir/SearchParameter/Condition-verification-status",
              "type" : "token"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "date"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "Procedure",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "date",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-date",
              "type" : "date"
            }
          ]
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "relationship"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                },
                {
                  "url" : "required",
                  "valueString" : "patient"
                },
                {
                  "url" : "required",
                  "valueString" : "status"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
            }
          ],
          "type" : "FamilyMemberHistory",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/FamilyMemberHistory-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "relationship",
              "definition" : "http://hl7.org/fhir/SearchParameter/FamilyMemberHistory-relationship",
              "type" : "token"
            }
          ]
        },
        {
          "type" : "ServiceRequest",
          "supportedProfile" : [
            "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common"
          ],
          "interaction" : [
            {
              "code" : "create"
            },
            {
              "code" : "search-type"
            },
            {
              "code" : "read"
            },
            {
              "code" : "vread"
            },
            {
              "code" : "update"
            },
            {
              "code" : "patch"
            },
            {
              "code" : "delete"
            },
            {
              "code" : "history-instance"
            },
            {
              "code" : "history-type"
            }
          ],
          "referencePolicy" : ["resolves"],
          "searchRevInclude" : ["Provenance:target"],
          "searchParam" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "identifier",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "intent",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-intent",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "subject",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-subject",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHALL"
                }
              ],
              "name" : "status",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-status",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "performer",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "occurrence",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-occurrence",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "patient",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "requester",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-requester",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "authored",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-authored",
              "type" : "date"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "based-on",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-based-on",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "body-site",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-body-site",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "category",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-category",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "code",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-code",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "encounter",
              "definition" : "http://hl7.org/fhir/SearchParameter/clinical-encounter",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "instantiates-canonical",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-instantiates-canonical",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "instantiates-uri",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-instantiates-uri",
              "type" : "uri"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "performer-type",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-performer-type",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "priority",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-priority",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "replaces",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-replaces",
              "type" : "reference"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "requisition",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-requisition",
              "type" : "token"
            },
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "MAY"
                }
              ],
              "name" : "specimen",
              "definition" : "http://hl7.org/fhir/SearchParameter/ServiceRequest-specimen",
              "type" : "reference"
            }
          ]
        }
      ],
      "interaction" : [
        {
          "code" : "transaction"
        },
        {
          "code" : "batch"
        },
        {
          "code" : "search-system"
        },
        {
          "code" : "history-system"
        }
      ]
    }
  ]
}

```
