# JP Core Patient Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Patient Profile**

## Resource Profile: JP Core Patient Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Patient
* **項目**: *Title*
  * **内容**: JP Core Patient Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはPatientリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。 

患者のケアやその他の健康関連サービスを受けている個人または動物に関する基本情報およびその他の管理情報。

## スコープ

本リソースは、以下を含む幅広い健康関連活動に関与する患者と動物に関するデータをカバーしている。

* 治療
* 精神科医療
* 社会福祉
* 妊娠ケア
* 看護と生活支援
* 健康サービス
* 個人の健康と運動データの追跡

本リソースのデータは、患者個人に関する情報をカバーしている。その属性は、管理、財務、およびロジスティックな手続きをサポートするために必要な基本情報に焦点を当てている。患者の記録は、通常、患者のケアを行う各組織によって作成・維持される。従って、複数の組織で治療を受けている患者又は動物は、その情報を複数のPatientリソースに存在させることができる。

全ての概念が基本リソースに含まれているわけではないが(人種、民族、臓器提供の有無、国籍等)、特定の法域のために定義されたプロファイルや標準的な拡張機能に含まれている場合がある。このようなフィールドは、法域によって大きく異なり、似たような概念でも名前や値セットが異なることが多いが、マッピングや交換ができるほど似ているわけではない。

本プロファイルは、患者に関する情報の登録や検索、取得のために 、FHIR Patientリソースを使用するにあたっての、最低限の制約を記述したものである。Patientリソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 氏名などの患者情報による患者基本情報の検索
 （Patient.name は国際仕様に準拠し、JP Core でも必須要素ではない（0..*）が、本シナリオでは患者の識別および検索のために name が存在することを前提としている。）
* 他のリソースからの患者基本情報の参照

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md), [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core Coverage Profile](StructureDefinition-jp-coverage.md), [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md)...Show 36 more,[JP Core DiagnosticReport DentalOral Profile](StructureDefinition-jp-diagnosticreport-dentaloral.md),[JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md),[JP Core DiagnosticReport LabResult Profile](StructureDefinition-jp-diagnosticreport-labresult.md),[JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md),[JP Core Encounter Profile](StructureDefinition-jp-encounter.md),[JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md),[JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md),[JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md),[JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md),[JP Core Immunization Profile](StructureDefinition-jp-immunization.md),[JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md),[JP Core Media Pathology Profile](StructureDefinition-jp-media-pathology.md),[JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md),[JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core MedicationStatement Injection Profile](StructureDefinition-jp-medicationstatement-injection.md),[JP Core MedicationStatement Profile](StructureDefinition-jp-medicationstatement.md),[JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md),[JP Core Observation DentalOral Missing Tooth Condition Profile](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.md),[JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md),[JP Core Observation DentalOral Tooth Treatment Condition Profile](StructureDefinition-jp-observation-dentaloral-toothtreatmentcondition.md),[JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md),[JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md),[JP Core Observation Microbiology Profile](StructureDefinition-jp-observation-microbiology.md),[JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md),[JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md),[JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md),[JP Core Observation SocialHistory Profile](StructureDefinition-jp-observation-socialhistory.md),[JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md),[JP Core Patient Profile](StructureDefinition-jp-patient.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md),[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)and[JP Core Specimen Pathology Profile](StructureDefinition-jp-specimen-pathology.md)
* Examples for this Profile: [Patient/jp-patient-example-1](Patient-jp-patient-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-patient)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-patient.csv), [Excel](StructureDefinition-jp-patient.xlsx), [Schematron](StructureDefinition-jp-patient.sch) 

### 必須要素

Patient リソースは、次の要素を持たなければならない。

* identifier : 患者を識別するための識別子は必須要素でありidentifier.value が必ず存在しなければならない、またidentifierの名前空間を表すidentifier.systemも組み合わせて、医療機関固有の患者番号を表現することが一般的である

### Extensions定義

JP Patient リソースで使用される拡張は次の通りである。

* [religion](https://hl7.org/fhir/R4/extension-patient-religion.html)
* [birthPlace](https://hl7.org/fhir/R4/extension-patient-birthplace.html)
* [JP_Patient_Race](StructureDefinition-jp-patient-race.md)
* [nameRepresentationUse](https://hl7.org/fhir/R4/extension-iso21090-en-representation.html)

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Patient?identifier=urn:oid:1.2.392.100495.20.3.51.1+[医療機関コード10桁]|123456 |
| SHOULD | name | string | GET [base]/Patient?name=山田%20太郎 |
| SHOULD | birthdate,name | date,string | GET [base]/Patient?birthdate=eq2013-01-14&name=山田%20太郎 |
| SHOULD | birthdate,gender | date,token | GET [base]/Patient?birthdate=eq2013-01-14&gender=male |
| SHOULD | birthdate,name,gender | date,string,token | GET [base]/Patient?birthdate=eq2013-01-14&name=山田%20太郎&gender=male |
| SHOULD | name,phone | string,token | GET [base]/Patient?name=山田%20太郎&phone=111-222-3333 |
| SHOULD | name,address-postalcode | string,string | GET [base]/Patient?name=山田%20太郎&address-postalcode=1234567 |
| MAY | family,given,birthdate,gender,phone,address-postalcode | string,string,date,token,token,string | GET [base]/Patient?family=山田&given=太郎&birthdate=eq2013-01-14&gender=male&phone=111-222-3333&address-postalcode=1234567 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、患者番号/カルテ番号などの識別子によるPatientの検索をサポートしなければならない（SHALL）

```
GET [base]/Patient?identifier={system|}[token]

```

例：

```
GET [base]/Patient?identifier=urn:oid:1.2.392.100495.20.3.51.11312345670|123456

```

指定された識別子に一致するPatientリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. name 検索パラメータを使用してPatientの検索をサポートすることが望ましい（**SHOULD**）、name検索パラメータはHumanNameの文字列フィールド（family、give、prefix、suffix、および/またはtextを含む）のいずれかに一致するPatientリソースを検索する

```
GET [base]/Patient?name={string}

```

例：

```
GET [base]/Patient?name=山田%20太郎

```


1. birthdate, name 検索パラメータを使用して、Patientの検索をサポートすることが望ましい（**SHOULD**）。name検索パラメータは、HumanNameの文字列フィールド（family、give、prefix、suffix、および/またはtextを含む）のいずれかに一致するPatientリソースを検索する

```
GET [base]/Patient?birthdate=eq{date}&name={string}

```

例：

```
GET [base]/Patient?birthdate=eq2000-10-10&name=山田%20太郎

```


1. birthdate, gender 検索パラメータを使用して、Patientの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Patient?birthdate=eq{date}&gender={token}

```

例：

```
GET [base]/Patient?birthdate=eq2000-10-10&gender=male

```


1. birthdate, name, gender 検索パラメータを使用してPatientの検索をサポートすることが望ましい（**SHOULD**）、name検索パラメータはHumanNameの文字列フィールド（family、give、prefix、suffix、および/またはtextを含む）のいずれかに一致するPatientリソースを検索する

```
GET [base]/Patient?birthdate=eq{date}&name={string}&gender={token}

```

例：

```
GET [base]/Patient?birthdate=eq2000-10-10&name=山田%20太郎&gender=male

```


1. name, phone 検索パラメータを使用してPatientの検索をサポートすることが望ましい（**SHOULD**）、name検索パラメータはHumanNameの文字列フィールド（family、give、prefix、suffix、および/またはtextを含む）のいずれかに一致するPatientリソースを検索する

```
GET [base]/Patient?name={string}&phone={token}

```

例：

```
GET [base]/Patient?name=山田%20太郎&phone=0123456789

```


1. name, address-postalcode 検索パラメータを使用してPatientの検索をサポートすることが望ましい（**SHOULD**）、name検索パラメータはHumanNameの文字列フィールド（family、give、prefix、suffix、および/またはtextを含む）のいずれかに一致するPatientリソースを検索する、address-postalcodeはPatient.address.postalCode要素に対する検索パラメータであり日本の住所表記における郵便番号をキーにして検索することを想定している

```
GET [base]/Patient?name={string}&address-postalcode={string}

```

例：

```
GET [base]/Patient?name=山田%20太郎&address-postalcode=1234567

```


##### オプション検索パラメータ

オプションとして次の検索パラメータをサポートすることができる。

1. 複合条件として、family,given,birthdate,gender,phone,address-postalcodename の各検索パラメータを複数指定したPatientの検索をサポートすることができる（MAY）

```
GET [base]/Patient?family={string}&given={string}&birthdate=eq{date}&gender={token}&phone={token}&address-postalcode={string}

```

例：

```
GET [base]/Patient?family=山田&given=太郎&birthdate=eq2013-01-14&gender=male&phone=111-222-3333&address-postalcode=1234567

```

family,given,birthdate,gender,phone,address-postalcodename の各検索パラメータに一致するPatientリソースを含むBundleを検索する。

##### 追加検索パラメータ

カナ名称ソート用の検索パラメータ[jp-patient-kanasort-sp]を追加している。

#### Operation一覧

JP Patient リソースに対して使用される操作は次の通りである。

* $everything：[base]/Patient/$everything , [base]/Patient/[id]/$everything

##### $everything 操作

この操作は、この操作が呼び出された特定のPatientリソースに関連する全ての情報を返す。応答は "searchset" タイプのBundleリソースである。サーバーは、少なくとも、識別された医療従事者のPatientコンパートメントに含まれる全てのリソースと、それらから参照されるすべてのリソースを返すことが望ましい。

この操作の公式なURLは以下である。

```
http://hl7.jp/fhir/OperationDefinition/Patient-everything

```

```
URL: [base]/Patient/[id]/$everything

```

本操作は、べき等な操作である。

###### 入力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| start | 0..1 | date | 特定の日付範囲で提供されたケアに関連する全ての記録を意味する。開始日が指定されていない場合、終了日以前のすべてのレコードが対象に含まれる。 |
| end | 0..1 | date | 特定の日付範囲で提供されたケアに関連する全ての記録を意味する。終了日が指定されていない場合、開始日以降のすべてのレコードが対象に含まれる。 |
| _since | 0..1 | instant | 指定された日時以降に更新されたリソースのみが応答に含まれる。 |
| _type | 0..* | code | 応答に含むFHIRリソース型を、カンマ区切りで指定する。指定されない場合は、サーバーは全てのリソース型を対象とする。 |
| _count | 0..1 | integer | Bundleの1ページに含まれるリソース件数を指定。 |

###### 出力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| return | 1..1 | Bundle | バンドルのタイプは"searchset"である。この操作の結果は、リソースとして直接返される。 |

###### 例

リクエスト：単一のPatientに関連する全てのリソースを取得する。

```
GET [base]/Patient/p001/$everything
[some headers]

```

レスポンス：指定されたPatientに関連する全てのリソースを返す。

HTTP/1.1 200 OK [other headers]

```
    {
      "resourceType": "Bundle",
      "id": "example",
      "meta": {
        "lastUpdated": "2014-08-18T01:43:33Z"
      },
      "type": "searchset",
      "entry": [
        {
          "fullUrl": "http://example.org/fhir/Patient/p001",
          "resource": {
            "resourceType": "Patient",
            省略
          }
        }
      ]
    }  

```

### サンプル

* [**患者男性**](Patient-jp-patient-example-1.md)

## その他、参考文献・リンク等

1. 退院時サマリー規約[http://www.hl7.jp/library/item/HL7J-CDA-007.pdf](http://www.hl7.jp/library/item/HL7J-CDA-007.pdf)
1. 診療情報提供書規格[http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf](http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf)
1. 特定健診情報ファイル仕様[https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165280.html](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165280.html)
1. SS-MIX2 標準化ストレージ 仕様書 Ver.1.2h[https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf](https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf)
1. ICSR E2B(R3)[https://www.pmda.go.jp/int-activities/int-harmony/ich/0093.html](https://www.pmda.go.jp/int-activities/int-harmony/ich/0093.html)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-patient",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
  "version" : "1.3.0-dev",
  "name" : "JP_Patient",
  "title" : "JP Core Patient Profile",
  "status" : "active",
  "date" : "2025-07-30",
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
  "description" : "このプロファイルはPatientリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
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
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "short" : "医療サービスを受けている個人または動物に関する情報",
        "definition" : "ケアまたはその他の健康関連サービスを受けている個人または動物に関する基本情報およびその他の管理情報。"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.extension:religion",
        "path" : "Patient.extension",
        "sliceName" : "religion",
        "short" : "患者の宗教 【詳細参照】",
        "definition" : "患者の公言された宗教的所属。",
        "comment" : "患者の宗教をValueSet(v3.ReligiousAffiliation)より選択する。輸血や食事で考慮が必要な場合がある。  \n　- 1013 キリスト教  \n　- 1020 ヒンドゥー教  \n　- 1023 イスラム教  \n　  \nなど",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-religion|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:birthPlace",
        "path" : "Patient.extension",
        "sliceName" : "birthPlace",
        "short" : "患者の生誕地 【詳細参照】",
        "definition" : "患者の登録された出生地。システムは、birthPlaceアドレスを個別の要素に格納しない場合、address.textを使用してよい。",
        "comment" : "患者の生誕地をAddress型で表現する",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-birthPlace|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:race",
        "path" : "Patient.extension",
        "sliceName" : "race",
        "short" : "患者の人種 【詳細参照】",
        "definition" : "オプションの拡張要素-すべてのリソースで使用できる。",
        "comment" : "患者の人種をValueSet(Race)より選択する。  \n　- 2034-7 中国人  \n　- 2039-6 日本人  \n　- 2040-4 韓国人  \n　- 2108-9 ヨーロッパ人  \n　- 2110-5 英国人  \n　- 2111-3 フランス人  \n　- 2112-1 ドイツ人  \n　  \nなど",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Patient_Race"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "患者の識別子【詳細参照】",
        "definition" : "患者の識別子。",
        "comment" : "IDの名前空間を表す Patient.identifier.system と ID値そのものを表す Patient.identifier.value の組み合わせとして表現する。  \nPatient.identifier.system には、urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号を使用する。  \n医療機関識別OID番号は患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁とする。医療機関コード（１０桁）の詳細はOrganizationプロファイルの医療機関コード１０桁の説明を参照すること。  \n　  \n例：医療機関コード「1312345670」の場合「urn:oid:1.2.392.100495.20.3.51.11312345670」  \n　  \nなお、urn:oid:1.2.392.100495.20.3.51の部分は、「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」表19 識別子名前空間一覧において医療機関等の患者IDとして割り当てられたOIDのURL型である。地域医療連携ネットワークの地域患者IDを指定する場合も同様に、地域患者IDを識別する名前空間（IHE ITI PIX等で使用されるOID等）をsystemに使用することができる。",
        "requirements" : "ほとんどの場合、患者には特定の数値識別子が割り当てられる。",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.use",
        "path" : "Patient.identifier.use",
        "short" : "usual | official | temp | secondary | old (If known) 【詳細参照】",
        "comment" : "IDの種別をValueSet(IdentifierUse)より選択する。  - usual : 一般- official : 公式（マイナンバーなど、最も信頼できると見なされる場合に使用）- temp : 一時的　- secondary : 二次利用　- old : 過去の識別子"
      },
      {
        "id" : "Patient.identifier.type",
        "path" : "Patient.identifier.type",
        "short" : "識別子の種別 【詳細参照】",
        "comment" : "IDの種別をValueSet(Identifier Type Codes)より選択する。　- DL : 運転免許証番号　- PPN : パスポート番号　- BRN : 血統登録番号　- MR : カルテ番号、など"
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "short" : "The namespace for the identifier value 【詳細参照】",
        "comment" : "Patient.identifier.system には、urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号を使用する。 医療機関識別OID番号は患者IDの発行者である機関の医療機関コード（１０桁）の先頭に１をつけた11桁とする。医療機関コード（１０桁）の詳細はOrganizationプロファイルの医療機関コード１０桁の説明を参照すること。  ```例：医療機関コード「1312345670」の場合「urn:oid:1.2.392.100495.20.3.51.11312345670」```　なお、urn:oid:1.2.392.100495.20.3.51の部分は、「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」表19 識別子名前空間一覧において医療機関等の患者IDとして割り当てられたOIDのURL型である。地域医療連携ネットワークの地域患者IDを指定する場合も同様に、地域患者IDを識別する名前空間（IHE ITI PIX等で使用されるOID等）をsystemに使用することができる。\n\nPatient.identifier.systemには、厚生労働省が推進する全国医療情報プラットフォームや電子カルテ情報共有サービスで公開されている識別子体系、あるいは JP Core において任意の医療機関がカルテ番号として使用する値などを指定することができる。\nこれ以外（例：DL：運転免許証番号、PPN：パスポート番号、BRN：血統登録番号など）については、JP Core では system の値を定義していない。"
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "識別子のvalueは一意である必要がある。 【詳細参照】",
        "comment" : "患者を一意的に識別するID(例えば、患者IDやカルテ番号など)を設定。",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.period",
        "path" : "Patient.identifier.period",
        "comment" : "IDが使われていた/使われている期間。"
      },
      {
        "id" : "Patient.identifier.assigner",
        "path" : "Patient.identifier.assigner",
        "comment" : "IDを発行した組織（テキストのみでも可）",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "definition" : "この患者記録がアクティブに使用されているかどうか。多くのシステムは、このプロパティを使用して、組織のビジネスルールに基づいて一定期間見られなかった患者など、非現在の患者としてマークする。  \n非アクティブな患者を除外するために患者リストをフィルタリングするためによく使用される。  \n死亡した患者は、同じ理由で不活性とマークされる場合があるが、死後しばらくは活性である場合がある。",
        "comment" : "この患者の記録が有効かどうか。誤って患者を登録して削除したい場合などにfalseにする",
        "requirements" : "患者レコードが誤って作成された場合のため、使用されないレコードとしてマークできる必要がある。",
        "isModifierReason" : "この要素は、レコードの有効・無効判定を示すステータス要素であるため、修飾子としてラベル付けされる"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "definition" : "個人に関連付けられた名前。",
        "comment" : "患者は、用途や適用期間が異なる複数の名前を持つ場合がある。動物の場合、名前は人間によって割り当てられて使用され、同じパターンを持つという意味で「HumanName」を使用する。  \nFHIRデータ型仕様に従って、以下の内容を採用する。  \n　- 姓名分割できる場合は、名前パート HumanName.familyとHumanName.givenに指定する  \n　- ミドルネームがある場合は、given に指定する（givenは繰り返し可能）  \n　- 姓名に分割できない場合は、HumanName.text にフルネームを指定する  \n　- 各名前パートとtext は、両方存在してもよい  \n　- 漢字氏名、カナ氏名の区別は、iso21090-EN-representation を使用する",
        "requirements" : "複数の名前で患者を追跡できる必要がある。例としては、正式名とパートナー名がある。",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_HumanName"
            ]
          }
        ]
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "short" : "個人に連絡するための連絡先の詳細",
        "definition" : "個人に連絡するための連絡先の詳細（電話番号や電子メールアドレスなど）。",
        "comment" : "患者は、さまざまな用途または適用期間違いで連絡先を複数の方法を持っている場合がある。緊急時連絡先として、また身元確認を支援するためのオプションが必要になる場合がある。患者当人に直接連絡できない場合があるが、患者を代理できる別の関係者（自宅の電話、またはペットの所有者の電話）を設定する場合もある。",
        "requirements" : "人々は、電話、電子メールなどの何らかの方法で彼らに連絡する（プライマリ）方法を持っている。"
      },
      {
        "id" : "Patient.telecom.system",
        "path" : "Patient.telecom.system",
        "short" : "phone | fax | email | pager | url | sms | other 【詳細参照】",
        "comment" : "患者の連絡先の種別をValueSet(ContactPointSystem)より選択する。  　- phone : 電話　- fax : Fax 　- email : 電子メール　- pager : ポケットベル　- url : 電話、ファックス、ポケットベル、または電子メールアドレスではなく、URLとして表される連絡先。これはWebサイト、ブログ、Skype、Twitter、Facebookなどのさまざまな機関または個人の連絡先を対象としている。電子メールアドレスには使用しないこと。　- sms : SMSメッセージの送信に使用できる連絡先（携帯電話、一部の固定電話など）  　- other : 電話、Fax、ポケットベル、または電子メールアドレスではなく、URLとして表現できない連絡先。例：内部メールアドレス。これは、URLとして表現できる連絡先（Skype、Twitter、Facebookなど）には使用しないこと。"
      },
      {
        "id" : "Patient.telecom.value",
        "path" : "Patient.telecom.value",
        "comment" : "連絡先の番号やメールアドレス"
      },
      {
        "id" : "Patient.telecom.use",
        "path" : "Patient.telecom.use",
        "short" : "home | work | temp | old | mobile - 連絡先の用途等 【詳細参照】",
        "comment" : "患者の連絡先の種別をValueSet(ContactPointUse)より選択する。   一時的なものまたは古いものであると明示しない限り、連絡先が最新とみなされる。  \n　- home : 自宅  \n　- work : 職場  \n　- temp : 一時的  \n　- old : 以前の  \n　- mobile : モバイル機器"
      },
      {
        "id" : "Patient.telecom.rank",
        "path" : "Patient.telecom.rank",
        "comment" : "連絡先の使用順序（1 = 最高）"
      },
      {
        "id" : "Patient.telecom.period",
        "path" : "Patient.telecom.period",
        "comment" : "連絡先が使用されていた/されている期間"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "definition" : "管理上の性別-患者が管理および記録管理の目的で持つと見なされる性別。",
        "comment" : "患者の性別をValueSet(AdministrativeGender)より選択する。  \n　male 男性  \n　female 女性  \n　other その他  \n　unknown 不明"
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "個人の生年月日",
        "definition" : "個人の生年月日",
        "comment" : "実際の生年月日が不明な場合は、少なくとも推定年を推測として提供する必要があり、時間が必要な場合（出産/乳児ケアシステムなど）に使用できる標準の拡張extension「patient-birthTime」がある。  \n患者の生年月日をYYYY-MM-DD形式で入れる。  \n例：1945-08-23"
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "short" : "個人が死亡しているかどうかを示す",
        "definition" : "個人が死亡しているかどうかを示す。",
        "comment" : "値がない場合は、個人が死亡したかどうかについてのステートメントがないことを意味し、ほとんどのシステムは、値がないことを人が生きていることの兆候として解釈する。  \n患者が死亡しているかどうかを示す  deceasedBooleanまたはdeceasedDateTimeのどちらかに値が入る  \n　- deceasedBoolean : true(死亡) / false(生存)  \n　- deceasedDateTime : 患者の死亡日時"
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "個人の住所 【詳細参照】",
        "definition" : "個人の住所。",
        "comment" : "患者は、異なる用途または適用可能な期間で複数の住所を持っている可能性がある。  \n【JP Core仕様】FHIRデータ型仕様に従って、以下の案とした。  \n　- 住所が構造化されている場合、住所パート Address.country、Address.postalcode、Address.state、Address.city、Address.line に分割して記載する  \n　- 住所が構造化されていない場合は、Address.text に記述する  \n　- 各住所パートとtext は、両方存在してもよい  \n※診療文書構造化記述規約等では、streetAddressLine (FHIRではlineに対応) に指定するとなっていた。"
      },
      {
        "id" : "Patient.address.use",
        "path" : "Patient.address.use",
        "short" : "home | work | temp | old | billing - purpose of this address　住所の用途 【詳細参照】",
        "definition" : "The purpose of this address.  \n住所の用途",
        "comment" : "住所の用途をValueSet(AddressUse)より選択する。  \n　- home : 自宅  \n　- work : 職場  \n　- temp : 一時的  \n　- old : 以前の  \n　- billing : 請求書、インボイス、領収書などの送付用"
      },
      {
        "id" : "Patient.address.type",
        "path" : "Patient.address.type",
        "short" : "postal | physical | both 【詳細参照】",
        "definition" : "住所（訪問できる住所）と郵送先住所（私書箱や気付住所など）を区別する。ほとんどのアドレスは両方。",
        "comment" : "住所の種類をValueSet(AddressType)より選択する。  \n　- postal : 郵送先 - 私書箱、気付の住所  \n　- physical : 訪れることのできる物理的な住所  \n　- both : postalとphysicalの両方"
      },
      {
        "id" : "Patient.address.text",
        "path" : "Patient.address.text",
        "short" : "住所のテキスト表現 【詳細参照】",
        "definition" : "表示するアドレス全体を指定する  \n例：郵便ラベル。これは、特定の部品の代わりに、または特定の部品と同様に提供される場合がある。",
        "comment" : "テキスト表現とパーツの両方を提供できる。アドレスを更新するアプリケーションは、テキストとパーツの両方が存在する場合、パーツにないコンテンツはテキストに含まれないようにする必要がある。  \n　- 住所を(都道府県や市町村などに)分離して管理していない場合は、textに入れる。  \n　- 住所を(都道府県や市町村などに)分離して管理している場合でも、まとめてtextに入れること。  \n　- 郵便番号は含めない。  \n　  \n例：東京都文京区本郷7-3-1"
      },
      {
        "id" : "Patient.address.line",
        "path" : "Patient.address.line",
        "short" : "ストリート名や番地など 【詳細参照】",
        "definition" : "このコンポーネントには、家番号、アパート番号、通りの名前、通りの方向、P.O。が含まれる。ボックス番号、配達のヒント、および同様の住所情報など。",
        "comment" : "【JP Core仕様】state要素とcity要素で表現しなかったそのあとの住所部分を番地以降の部分も含めてすべていれる。  \n英数字は半角でも全角でもよい。文字列の前後および途中に空白文字を含めないこと。  \n繰り返し要素が許されているので、区切りを表現したい場合には、複数要素に分けて格納してもよい。  \n　  \n例：本郷7-3-1  \n例：大字石神９７６  \n例：藤崎町大字藤崎字西村1-2 春山荘201号室"
      },
      {
        "id" : "Patient.address.city",
        "path" : "Patient.address.city",
        "short" : "市区町村名 【詳細参照】",
        "definition" : "n市、町、郊外、村、その他のコミュニティまたは配達センターの名前。",
        "comment" : "１MBを超えないこと。  【JP Core仕様】郡市区町村部分だけを「郡」「市」「区」「町」「村」などの文字を含めて設定する。 例：文京区"
      },
      {
        "id" : "Patient.address.district",
        "path" : "Patient.address.district",
        "short" : "地区名 【詳細参照】",
        "comment" : "【JP Core仕様】日本の住所では使用しない。"
      },
      {
        "id" : "Patient.address.state",
        "path" : "Patient.address.state",
        "short" : "国の次の地区単位 【詳細参照】",
        "definition" : "国の主権が制限されている国のサブユニット。日本の場合、都道府県名。",
        "comment" : "１MBを超えないこと。  都道府県名。「都」「道」「府」「県」のそれぞれの文字を含める。 例：東京都"
      },
      {
        "id" : "Patient.address.postalCode",
        "path" : "Patient.address.postalCode",
        "short" : "郵便番号 【詳細参照】",
        "comment" : "郵便番号。日本の郵便番号の場合には3桁数字とハイフン1文字と4桁数字からなる半角８文字、または最初の3桁だけの3文字のいずれかとする。 例：113-8655"
      },
      {
        "id" : "Patient.address.country",
        "path" : "Patient.address.country",
        "short" : "国名またはISO 3166コード　(ISO 3166 2 or 3文字コード)",
        "definition" : "国-一般的に理解されている、または一般的に受け入れられている国の国名かコード。",
        "comment" : "ISO 3166 3文字コードは、人間が読める国名の代わりに使用する。  ISO 3166の2文字または3文字のコード.  日本であれば、JPまたはJPN"
      },
      {
        "id" : "Patient.address.period",
        "path" : "Patient.address.period",
        "short" : "住所が使用されていた（いる）期間",
        "definition" : "住所が使用されていた（いる）期間",
        "comment" : "住所が使用されていた/されている期間。 期間は時間の範囲を指定する。使用状況はその期間全体に適用されるか、範囲から1つの値が適用される。  期間は、時間間隔（経過時間の測定値）には使用されない。"
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "short" : "患者の婚姻（市民）状態 【詳細参照】",
        "definition" : "このフィールドは患者の最新の婚姻（市民）状態",
        "comment" : "患者の婚姻関係をValueSet(Marital Status Codes)より選択する。  \n　A : 婚姻取消・無効  \n　D : 離婚  \n　I : 暫定法令  \n　L : 法的別居中  \n　M : 既婚  \n　P : 一夫多妻制  \n　S : 生涯独身・非婚  \n　T : 同棲  \n　U : 未婚  \n　W : 未亡人  \n　UNK : 不明"
      },
      {
        "id" : "Patient.multipleBirth[x]",
        "path" : "Patient.multipleBirth[x]",
        "short" : "患者が多胎出産の一人かどうか",
        "definition" : "患者が多胎児の一人であるか（boolean）、実際の出生順位（integer）であるかを示す。",
        "comment" : "multipleBirthBooleanまたはmultipleBirthIntegerのどちらかに値が入る  \n　- multipleBirthBoolean : 多胎出産時かどうか  \n３つ子の例にbooleanが指定された場合、3つの患者レコードすべてがvalueBoolean = trueになる（順序は示されない）  \n　- multipleBirthInteger : 多胎出産時の出生順位  \nたとえば、３つ子の２番目の生まれはvalueInteger = 2で、3番目の生まれはvalueInteger = 3になる",
        "requirements" : "多産児の曖昧性解消、特にラボなど、医療提供者が患者に会わない場合に関連する。"
      },
      {
        "id" : "Patient.photo",
        "path" : "Patient.photo",
        "short" : "患者の画像",
        "definition" : "患者の画像。",
        "comment" : "ガイドライン：  \n　- 臨床写真ではなく、身分証明写真を使用すること  \n　- 寸法をサムネイルに制限する  \n　- リソースの更新を容易にするため、バイト数を少なくすること",
        "requirements" : "多くのEHRシステムには、患者の画像をキャプチャする機能がある。より新しいソーシャルメディアの使用にも適合する。"
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "short" : "患者の連絡先者（例：保護者、パートナー、友人）",
        "definition" : "患者の連絡先者（例：保護者、パートナー、友人）。",
        "comment" : "連絡先には、家族、取引先、保護者、介護者など、あらゆる種類の連絡先が含まれる。連絡先として使用しない親戚や家族を登録するためには適用されない。",
        "requirements" : "患者について連絡できる人を確認する必要がある。"
      },
      {
        "id" : "Patient.contact.relationship",
        "path" : "Patient.contact.relationship",
        "short" : "関係性の種類 【詳細参照】",
        "definition" : "患者と連絡先の関係性。",
        "comment" : "患者との関係性をValueSet(PatientContactRelationship)より選択する。  \n　C : 緊急連絡先  \n　E : 雇用者  \n　F : 連邦政府機関  \n　I : 保険会社  \n　N : 近親者  \n　S : 州政府機関  \n　U : 不明",
        "requirements" : "状況に応じて、アプローチするのに最適な関係者を決定するために使用される。"
      },
      {
        "id" : "Patient.contact.name",
        "path" : "Patient.contact.name",
        "definition" : "連絡先に登録された名前。",
        "requirements" : "連絡先は名前で識別する必要があるが、その連絡先に複数の名前が必要になることはまれである。"
      },
      {
        "id" : "Patient.contact.telecom",
        "path" : "Patient.contact.telecom",
        "definition" : "連絡先に登録された連絡方法（電話番号やメールアドレスなど）。",
        "comment" : "連絡先には、さまざまな用途または適用期間で連絡を取るための複数の方法がある。その人に緊急に連絡する際の連絡先を確認する必要がある。",
        "requirements" : "電話、電子メールなどの（優先する）連絡方法を確認する必要がある。"
      },
      {
        "id" : "Patient.contact.address",
        "path" : "Patient.contact.address",
        "definition" : "連絡先の住所。",
        "requirements" : "郵送ないし訪問により連絡を取ることができるよう注意する必要があるため。"
      },
      {
        "id" : "Patient.contact.gender",
        "path" : "Patient.contact.gender",
        "definition" : "管理上の性別-連絡先担当者が管理および記録管理のために持っていると考えられる性別。",
        "requirements" : "その人に正しく話しかけるために必要である。"
      },
      {
        "id" : "Patient.contact.organization",
        "path" : "Patient.contact.organization",
        "definition" : "連絡先が主として活動する、または勤務している組織。",
        "comment" : "連絡先に関連する組織",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Patient.contact.period",
        "path" : "Patient.contact.period",
        "definition" : "この患者に関連して、この連絡担当者または組織に連絡することが有効な期間。"
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "short" : "健康について患者と会話する際に使用する言語",
        "definition" : "健康について患者と会話する際に使用する言語。",
        "comment" : "言語が指定されていない場合、デフォルトのローカル言語が話されていることを意味する。複数のモードの習熟度を伝える必要がある場合は、複数のPatient.Communicationアソシエーションが必要である。動物の場合、言語は関連するフィールドではないため、インスタンスから除外する必要がある。患者がデフォルトの現地言語を話さない場合、通訳者が必要であることを明示的に宣言するために、通訳者必須基準を使用できる。",
        "requirements" : "患者が現地の言語を話さない場合、通訳が必要になる場合があるため、話せる言語と習熟度は、患者と関心のある他の人の両方にとって注意すべき重要な事項である。"
      },
      {
        "id" : "Patient.communication.language",
        "path" : "Patient.communication.language",
        "short" : "健康について患者と会話する際に使用する言語。 【詳細参照】",
        "definition" : "ISO-639-1 alpha 2コード小文字で言語を、またオプションとしてハイフンとISO-3166-1 alpha 2コード大文字を続けて地域を表す。たとえば、英語の場合は「en」、アメリカ英語の場合は「en-US」、イギリス英語の場合は「en-EN」である。",
        "comment" : "患者とコミュニケーションするときに使用できる言語をValueSet(CommonLanguages)より選択する。  \n　de : ドイツ語  \n　en : 英語  \n　fr : フランス語  \n　ja : 日本語  \n　ko : 韓国語  \nなど",
        "requirements" : "多言語の国のほとんどのシステムは、言語を伝えたいと考えられる。 すべてのシステムが実際に地域の方言を必要とするわけではない。"
      },
      {
        "id" : "Patient.communication.preferred",
        "path" : "Patient.communication.preferred",
        "definition" : "患者がこの言語を優先するかどうかを示す（他の言語よりも特定レベルまで習得している）。",
        "comment" : "この言語は、医療情報を伝えるために特に識別される。  \n患者がこの言語を習得している場合はtrue、そうでなければfalseを設定する。",
        "requirements" : "特定のレベルまで複数の言語を習得している人は、複数の言語を選択する可能性がある。つまり、特定の言語でのコミュニケーションに自信を持ち、他の言語を一種の備えとしている。"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "short" : "患者が指名するケア提供者",
        "definition" : "患者が指名するケア提供者",
        "comment" : "これはプライマリケア提供者(GPを含む)である場合もあれば、コミュニティ/障害を持つ患者指定のケアマネージャーである場合もある。ケアチームの記録には使用されない。これらはケアプランまたはEpisodeOfCareリソースにリンクされるCareTeamリソースに含まれている必要がある。複数のGPは、学期中の大学GPと共にリストされた家庭GPなどの学生や、「フライイン/フライアウト」労働者など、さまざまな理由で患者に対して記録される場合がある。また、医学的問題を認識し続けるために家庭GPに含まれる。  \n管轄区域は、必要に応じてこれを1、またはタイプごとに1にプロファイルできると決定する場合がある。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "short" : "患者記録の管理者である組織",
        "definition" : "患者記録の管理者である組織。",
        "comment" : "特定の患者記録を管理する組織は1つだけである。他の組織には独自の患者レコードがあり、Linkプロパティを使用してレコードを結合する場合がある（または、関連付けの信頼性評価を含めることができる個人リソース）",
        "requirements" : "事実上の同一患者をリンクする別のPatientリソース",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "definition" : "事実上の同一患者をリンクする別のPatientリソース。",
        "comment" : "リンクされた患者記録に相互リンクがあるという仮定はない。",
        "requirements" : "複数のユースケースがある。  \n　- 事務的なエラーのため一貫して人間を特定することが困難であり患者の記録が重複している  \n　- 複数のサーバーにわたり患者情報が配布されている",
        "isModifierReason" : "この要素は、メインのPatientリソースではない可能性があるため、修飾子としてラベル付けされ、このPatientレコードの代わりに参照された患者を使用する必要がある。link.type値が 'replaced-by'の場合"
      },
      {
        "id" : "Patient.link.other",
        "path" : "Patient.link.other",
        "definition" : "リンクが参照する他の患者リソース。",
        "comment" : "ここでRelatedPersonを参照すると、Personレコードを使用して患者とRelatedPersonを同じ個人として関連付ける必要がなくなる。",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : false
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Patient.link.type",
        "path" : "Patient.link.type",
        "short" : "replaced-by | replaces | refer | seealso 【詳細参照】",
        "definition" : "この患者リソースと別の患者リソース間のリンクのタイプ。",
        "comment" : "この患者リソースと別の患者リソース間のリンクのタイプをValueSet(LinkType)より選択する。  \n　- replaced-by : このリンクを含む患者リソースは使用しないこと  \n　- replaces : このリンクを含む患者リソースは、現在アクティブな患者レコードである  \n　- refer : このリンクを含む患者リソースは使用中であり、有効であるが、患者に関する主な情報源とは見なされていない  \n　- seealso : このリンクを含む患者リソースは使用中で有効であるが、同じ人物に関するデータが含まれていることがわかっている別の患者リソースを指す"
      }
    ]
  }
}

```
