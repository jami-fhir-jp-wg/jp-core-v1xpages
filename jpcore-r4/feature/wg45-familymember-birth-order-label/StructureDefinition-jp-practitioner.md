# JP Core Practitioner Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Practitioner Profile**

## Resource Profile: JP Core Practitioner Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Practitioner
* **項目**: *Title*
  * **内容**: JP Core Practitioner Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはPractitionerリソースに対して、医療従事者のデータを送受信するための基礎となる制約と拡張を定めたものである。 

本プロファイルは、医療従事者に関する情報の登録や検索、取得のために 、FHIR Practitioner リソースを使用するにあたっての、最低限の制約を記述したものである。Practitioner リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 氏名または医籍登録番号による医療従事者の検索
* 他のリソースからの医療従事者情報の参照（例：Patientリソースの generalPractitionerで参照される患者の主治医や、Encounterリソースのparticipantで参照される診察の担当医）

## スコープ

医療（ヘルスケア）の提供、及び、ヘルスケア関連サービスに、直接的、または、間接的に係わる全ての人を表す。本リソースに含まれる医療従事者の例を示す（ただし、この一覧に限定されない）。

* 医師、歯科医師、薬剤師
* 看護師、保健師、医療クラーク
* 助産師、栄養士、心理士
* 臨床検査技師、放射線技師
* 臨床工学技士、義肢装具士
* 医療事務者（受付担当者）

本リソースは、友人や親戚、隣人のケアをする個人のように、正式な責任を持たずに医療に関与する個人を表現するために使用してはならない。それらの情報は、患者の関係者として RelatedPerson リソースを使用して表現されるべきである。

Practitioner リソースは、ヘルスケアサービスの提供組織を代表し、複数の患者のために行動する個人に対して使用される。一方で、RelatedPerson リソースは、特定の組織に関連づけられておらず、特定の患者に関係する個人を表現するために使用される。

PractitionerRole リソースは、医療従事者が、特定の組織において与えられている役割の詳細を表す。特定の施設に関係しない資格や識別子（例：医籍番号や麻薬施用者免許証番号）は、Practitioner リソースに記録することが望ましい。一方で、特定の施設における医療従事者の識別子や役割（例：特定の医療機関における医療従事者ID）は、施設を表すOrganizationリソースとあわせて PractitionerRole リソースに記録することが望ましい。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md), [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md), [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md)...Show 18 more,[JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md),[JP Core Encounter Profile](StructureDefinition-jp-encounter.md),[JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md),[JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md),[JP Core Immunization Profile](StructureDefinition-jp-immunization.md),[JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md),[JP Core MedicationAdministration Requester Extension](StructureDefinition-jp-medicationadministration-requester.md),[JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md),[JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md),[JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md),[JP Core Patient Profile](StructureDefinition-jp-patient.md),[JP Core PractitionerRole Profile](StructureDefinition-jp-practitionerrole.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [Practitioner/jp-practitioner-example-female-1](Practitioner-jp-practitioner-example-female-1.md), [Practitioner/jp-practitioner-example-female-2](Practitioner-jp-practitioner-example-female-2.md), [Practitioner/jp-practitioner-example-male-1](Practitioner-jp-practitioner-example-male-1.md) and [Practitioner/jp-practitioner-example-male-2](Practitioner-jp-practitioner-example-male-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-practitioner)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-practitioner.csv), [Excel](StructureDefinition-jp-practitioner.xlsx), [Schematron](StructureDefinition-jp-practitioner.sch) 

### 必須要素

本プロファイルで定義された必須項目はない。

### Extensions定義

本プロファイルで使用される拡張は次の通りである。

#### 既存のExtensionの利用

* [nameRepresentationUse](https://hl7.org/fhir/R4/extension-iso21090-en-representation.html) 
* 医療従事者氏名(Practitioner.name)の漢字表記・カナ表記識別のために使用する
 

### その他

Practitioner.qualificationには、以下の医療従事者のqualification(資格)を格納できるようスライシングによる定義が追加されている。

| | | |
| :--- | :--- | :--- |
| narcoticPrescriptionLicenseNumber | 麻薬施用者免許番号を表現する | qualification.identifier.system = "urn:oid:1.2.392.100495.20.3.32.1[都道府県番号]" を指定し、麻薬取扱免許番号を同valueに格納する。[都道府県番号](https://www.mhlw.go.jp/topics/2007/07/dl/tp0727-1d.pdf) |
| MedicalRegistrationNumber | 医籍登録者番号を表現する | qualification.identifier.system = "http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber" を指定し、医籍登録者番号を同valueに格納する。 |

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Practitioner?identifier=urn:oid:1.2.392.100495.20.3.41.11312345670|789 |
| SHALL | name | string | GET [base]/Practitioner?name=山田 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、医療従事者番号などの識別子によるPractitionerの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Practitioner?identifier={system|}[token]

```

例：

```
GET [base]/Practitioner?identifier=urn:oid:1.2.392.100495.20.3.41.11312345670|123456

```

指定された識別子(identifier)に一致するPractitionerリソースを含むBundleを検索する。
1. name 検索パラメータを使用して、任意の名前パートによる文字列検索をサポートしなければならない（**SHALL**） S

```
GET [base]/Practitioner?name={string}

```

例：

```
GET [base]/Practitioner?name=山田

```

名前（姓:family、名:given、またはテキスト:text）が一致するPractitionerリソースを含むBundleを検索する。

##### 推奨検索パラメータ

推奨検索パラメータ(**SHOULD**)は定義しない。

### サンプル

* [**女性医師 麻薬施用者番号あり**](Practitioner-jp-practitioner-example-female-1.md)
* [**女性看護師**](Practitioner-jp-practitioner-example-female-2.md)
* [**男性医師**](Practitioner-jp-practitioner-example-male-1.md)
* [**男性看護師**](Practitioner-jp-practitioner-example-male-2.md)

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
  "id" : "jp-practitioner",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
  "version" : "1.3.0-dev",
  "name" : "JP_Practitioner",
  "title" : "JP Core Practitioner Profile",
  "status" : "active",
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
  "description" : "このプロファイルはPractitionerリソースに対して、医療従事者のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner",
        "short" : "ヘルスケアまたは関連サービスの提供に正式な責任を負う人",
        "definition" : "A person who is directly or indirectly involved in the provisioning of healthcare.  \n医療の提供に直接または間接的に関与する者をいう。"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "short" : "An identifier for the person as this agent Practitionerリソースに対する識別子【詳細参照】",
        "definition" : "An identifier that applies to this person in this role.  \nある役割の人に適用される識別子。",
        "comment" : "【JP Core仕様】IDの名前空間を表す Practitioner.identifier.systemと ID値そのものを表す Practitioner.identifier.value の組み合わせとして表現する。  \nPractitioner.identifier.systemは以下の割り当てる。  \n　  \n　- 医師の場合 : urn:oid:1.2.392.100495.20.3.41.医療機関識別OID番号  \n　- 歯科医師の場合、urn:oid:1.2.392.100495.20.3.42.医療機関識別OID番号  \n　  \n医療機関識別OID番号は患者IDの発行者である施設を識別するものであり、医療機関コード（１０桁）の先頭に１をつけた11桁とする。医療機関コード（１０桁）の詳細についてはOrganizationプロファイルの医療機関コード１０桁の説明を参照すること。  \n例：医療機関コード「1312345670」での医師の場合「urn:oid:1.2.392.100495.20.3.41.11312345670」  \n　  \nなお、urn:oid:1.2.392.100495.20.3.41 の部分は、「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」表19 識別子名前空間一覧において処方医 IDに割り当てられたOIDのURL型である。  \n　  \n地域医療連携ネットワークの地域医療従事者IDを指定する場合も同様に、地域医療従事者IDを識別する名前空間（IHE ITI PIX等で使用されるOID等）を system に使用することができる。  \n医師、歯科医師以外の医療者のIDの名前空間を表す system 値はまだ未定のため、空白もしくは「ドメイン名/PractitionerのSystem発行キー」などの識別コードを入れること。  \n　  \n例：http://www.abd-hospital.co.jp/practitioner-system",
        "requirements" : "多くの場合、エージェントには特定の識別子が割り当てられている。"
      },
      {
        "id" : "Practitioner.active",
        "path" : "Practitioner.active",
        "definition" : "この医療従事者の記録がアクティブに使用されているかどうかを示す。",
        "comment" : "医療従事者がある組織で使用されていない場合、別のロールでアクティブになっている可能性があるので、(例えそれらがアクティブであっても)PractitionerRoleに有効期間を終了日でマークしておく必要がある。",
        "requirements" : "医療従事者のレコードを誤って作成してしまったとき、使用しないようにマークできるようにする必要がある。"
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "definition" : "医療従事者の氏名（複数の場合もある）",
        "comment" : "プロパティの選択は、指定された単一の通常の名前があることを保証しなければならず、他の値はニックネーム（別名）、旧名、または他の値を適切に使用する。  \n一般的には、以下を基準にResourceReference.displayで使用する値を選択する。  \n　1. 最低限1つ以上の名前があること  \n　2.useプロパティが「usual」であること  \n　3. 有効期限は利用開始日から現在まであること  \n　4. useプロパティが「official」であること  \n　5. その他、内部ルールで決められた順番）  \n医療従事者のNameの漢字カナ表記については、JP_Patient.nameで採用した方法を踏襲する。  \nそのほか、要素の説明は、JP_Patient.nameを参照。",
        "requirements" : "医療従事者が知られている名前。複数ある場合は、従事者が通常知られている名前を表示に使用する。",
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
        "id" : "Practitioner.telecom",
        "path" : "Practitioner.telecom",
        "short" : "電話番号やメールアドレスなど、従事者への詳細な連絡先",
        "definition" : "電話番号やメールアドレスなど、従事者への詳細な連絡先。",
        "comment" : "異なる用途や適用される期間に応じて複数の連絡方法を持っている可能性がある。本人に緊急に連絡を取るためのオプションが必要な場合があり、また本人の身元確認に役立つ場合がある。これらは通常、自宅の電話番号、または役割が特定されていない携帯電話番号を持つことになる。  \n要素の説明は、JP_Patient.telecomを参照。",
        "requirements" : "医療従事者が持っているかもしれない任意の役割ごとに独立した連絡方法を知る必要がある。"
      },
      {
        "id" : "Practitioner.telecom.system",
        "path" : "Practitioner.telecom.system",
        "short" : "phone | fax | email | pager | url | sms | other 【JP_Patient.telecomを参照。】",
        "comment" : "連絡先の種別をValueSet(ContactPointSystem)より選択する。  　- phone : 電話　- fax : Fax 　- email : 電子メール　- pager : ポケットベル　- url : 電話、ファックス、ポケットベル、または電子メールアドレスではなく、URLとして表される連絡先。これはWebサイト、ブログ、Skype、Twitter、Facebookなどのさまざまな機関または個人の連絡先を対象としている。電子メールアドレスには使用しないこと。　- sms : SMSメッセージの送信に使用できる連絡先（携帯電話、一部の固定電話など）  　- other : 電話、Fax、ポケットベル、または電子メールアドレスではなく、URLとして表現できない連絡先。例：内部メールアドレス。これは、URLとして表現できる連絡先（Skype、Twitter、Facebookなど）には使用しないこと。"
      },
      {
        "id" : "Practitioner.telecom.value",
        "path" : "Practitioner.telecom.value",
        "comment" : "連絡先の番号やメールアドレス"
      },
      {
        "id" : "Practitioner.telecom.use",
        "path" : "Practitioner.telecom.use",
        "short" : "home | work | temp | old | mobile - 連絡先の用途等 【JP_Patient.telecomを参照。】",
        "comment" : "患者の連絡先の種別をValueSet(ContactPointUse)より選択する。  一時的なものまたは古いものであると明示しない限り、連絡先が最新とみなされる。  \n　- home : 自宅  \n　- work : 職場  \n　- temp : 一時的   \n　- old : 以前の  \n　- mobile : モバイル機器"
      },
      {
        "id" : "Practitioner.telecom.rank",
        "path" : "Practitioner.telecom.rank",
        "comment" : "連絡先の使用順序（1 = 最高）"
      },
      {
        "id" : "Practitioner.telecom.period",
        "path" : "Practitioner.telecom.period",
        "comment" : "連絡先が使用されていた/されている期間"
      },
      {
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "short" : "役割が特定されていない従事者の住所（通常は自宅の住所）",
        "definition" : "役割が特定されていない従事者の住所（通常は自宅の住所）。  \n勤務先の住所は通常、役割に依存するため、このプロパティには入力されない。",
        "comment" : "患者は、異なる用途または適用可能な期間で複数の住所を持っている可能性がある。  \n【JP Core仕様】FHIRデータ型仕様に従って、以下の案とした。  \n　・住所が構造化されている場合、住所パート Address.country、Address.postalcode、Address.state、Address.city、Address.line に分割して記載する  \n　・住所が構造化されていない場合は、Address.text に記述する  \n　・各住所パートとtext は、両方存在してもよい",
        "requirements" : "医療従事者の自宅/メールアドレスは、従業員管理のために必要とされることが多く、また、一部のロスタリングサービスでは、開始点（医療従事者の自宅）が計算に使用されることがある。"
      },
      {
        "id" : "Practitioner.address.use",
        "path" : "Practitioner.address.use",
        "short" : "home | work | temp | old | billing - purpose of this address　住所の用途 【JP_Patient.address参照】",
        "definition" : "The purpose of this address.  \n住所の用途",
        "comment" : "住所の用途をValueSet(AddressUse)より選択する。  \n　- home : 自宅  \n　- work : 職場  \n　- temp : 一時的  \n　- old : 以前の  \n　- billing : 請求書、インボイス、領収書などの送付用"
      },
      {
        "id" : "Practitioner.address.type",
        "path" : "Practitioner.address.type",
        "short" : "postal | physical | both 【JP_Patient.address参照】",
        "definition" : "住所（訪問できる住所）と郵送先住所（私書箱や気付住所など）を区別する。ほとんどのアドレスは両方。",
        "comment" : "住所の種類をValueSet(AddressType)より選択する。  \n　- postal : 郵送先 - 私書箱、気付の住所  \n　- physical : 訪れることのできる物理的な住所  \n　- both : postalとphysicalの両方"
      },
      {
        "id" : "Practitioner.address.text",
        "path" : "Practitioner.address.text",
        "short" : "住所のテキスト表現 【JP_Patient.address参照】",
        "definition" : "表示するアドレス全体を指定する  \n例：郵便ラベル。これは、特定の部品の代わりに、または特定の部品と同様に提供される場合がある。",
        "comment" : "テキスト表現とパーツの両方を提供できる。アドレスを更新するアプリケーションは、テキストとパーツの両方が存在する場合、パーツにないコンテンツはテキストに含まれないようにする必要がある。  \n　- 住所を(都道府県や市町村などに)分離して管理していない場合は、textに入れる。  \n　- 住所を(都道府県や市町村などに)分離して管理している場合でも、まとめてtextに入れること。  \n　- 郵便番号は含めない。  \n例：東京都文京区本郷7-3-1"
      },
      {
        "id" : "Practitioner.address.line",
        "path" : "Practitioner.address.line",
        "short" : "ストリート名や番地など 【JP_Patient.address参照】",
        "definition" : "このコンポーネントには、家番号、アパート番号、通りの名前、通りの方向、P.O。が含まれる。ボックス番号、配達のヒント、および同様の住所情報など。",
        "comment" : "【JP Core仕様】state要素とcity要素で表現しなかったそのあとの住所部分を番地以降の部分も含めてすべていれる。  \n英数字は半角でも全角でもよい。文字列の前後および途中に空白文字を含めないこと。  \n繰り返し要素が許されているので、区切りを表現したい場合には、複数要素に分けて格納してもよい。  \n例：本郷7-3-1  \n例：大字石神９７６  \n例：藤崎町大字藤崎字西村1-2 春山荘201号室"
      },
      {
        "id" : "Practitioner.address.city",
        "path" : "Practitioner.address.city",
        "short" : "市区町村名 【JP_Patient.address参照】",
        "definition" : "n市、町、郊外、村、その他のコミュニティまたは配達センターの名前。",
        "comment" : "１MBを超えないこと。  【JP Core仕様】郡市区町村部分だけを「郡」「市」「区」「町」「村」などの文字を含めて設定する。 例：文京区"
      },
      {
        "id" : "Practitioner.address.district",
        "path" : "Practitioner.address.district",
        "short" : "地区名 【JP_Patient.address参照】",
        "comment" : "【JP Core仕様】日本の住所では使用しない。"
      },
      {
        "id" : "Practitioner.address.state",
        "path" : "Practitioner.address.state",
        "short" : "国の次の地区単位 【JP_Patient.address参照】",
        "definition" : "国の主権が制限されている国のサブユニット。日本の場合、都道府県名。",
        "comment" : "１MBを超えないこと。  都道府県名。「都」「道」「府」「県」のそれぞれの文字を含める。 例：東京都"
      },
      {
        "id" : "Practitioner.address.postalCode",
        "path" : "Practitioner.address.postalCode",
        "short" : "郵便番号 【JP_Patient.address参照】",
        "comment" : "郵便番号。日本の郵便番号の場合には3桁数字とハイフン1文字と4桁数字からなる半角８文字、または最初の3桁だけの3文字のいずれかとする。 例：113-8655"
      },
      {
        "id" : "Practitioner.address.country",
        "path" : "Practitioner.address.country",
        "short" : "国名またはISO 3166コード　(ISO 3166 2 or 3文字こーど)",
        "definition" : "国-一般的に理解されている、または一般的に受け入れられている国の国名かコード。",
        "comment" : "ISO 3166 3文字コードは、人間が読める国名の代わりに使用する。  ISO 3166の2文字または3文字のコード.  日本であれば、jpまたはjpn"
      },
      {
        "id" : "Practitioner.address.period",
        "path" : "Practitioner.address.period",
        "short" : "住所が使用されていた（いる）期間",
        "definition" : "住所が使用されていた（いる）期間",
        "comment" : "住所が使用されていた/されている期間。 期間は時間の範囲を指定する。使用状況はその期間全体に適用されるか、範囲から1つの値が適用される。  期間は、時間間隔（経過時間の測定値）には使用されない。"
      },
      {
        "id" : "Practitioner.gender",
        "path" : "Practitioner.gender",
        "definition" : "管理や記録のためにその人が持っていると思われる性別。",
        "requirements" : "正しく相手に対応する必要がある。"
      },
      {
        "id" : "Practitioner.birthDate",
        "path" : "Practitioner.birthDate",
        "short" : "医療従事者の生年月日",
        "definition" : "医療従事者の生年月日",
        "requirements" : "身分証明に必要。"
      },
      {
        "id" : "Practitioner.photo",
        "path" : "Practitioner.photo",
        "definition" : "医療従事者の写真。",
        "comment" : "サマリービューを提供する場合（例えば、Observation.value[x]で）、添付ファイルは \"Signed Procedure Consent \"のような簡単な表示テキストで表現されなければならない。",
        "requirements" : "多くのEHRシステムは、患者や職員の画像をキャプチャする機能を持っている。新しいソーシャルメディアの利用にも対応している。"
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "code"
            }
          ],
          "rules" : "open"
        },
        "short" : "ケアの提供に関連する認定、ライセンス、またはトレーニング 【詳細参照】",
        "definition" : "医療従事者によるケアの提供を認可する、あるいは関連する、公式の証明書、トレーニング、免許証等。  \n例えば、医療委員会が発行した医師免許証は、認定された地域内で医療を行うことを開業医に許可するものである。",
        "comment" : "麻薬施用者免許番号、または医籍登録番号を格納するためのQualification/Slicing定義。  \n麻薬施用者免許番号の場合のsystemはFixed Valueの urn:oid:1.2.392.100495.20.3.32.1[都道府県番号] を使用する。  \n( 頭に1をつけて末尾3桁で表現する。これは北海道などの場合、都道府県番号は01になるが、OIDでは先頭が0は許可されていないため、頭に1をつけて3桁で表現する)  \nつまり麻薬施用者免許番号を発行した都道府県ごとにsystemも異なる値となる。  \n医籍登録番号のsystemはFixed Valueの http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber を使用する。"
      },
      {
        "id" : "Practitioner.qualification.identifier",
        "path" : "Practitioner.qualification.identifier",
        "definition" : "この人物のこの役割における資格に適用される識別子。",
        "comment" : "【JP Core仕様】identifierには資格番号を入力する。  \nCodeは、v2 table 0360が例としてのっている。0360は、USER-DEFINED TABLES であるため、適切なCodeがなければ追加できる。  \nPeriodにはその資格の開始日・終了日を入力する。（例：麻薬資格者の有効期限等の格納）  \n医籍登録番号　Practitioner.qualification.identifier　http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber  \n麻薬施用者番号　Practitioner.qualification.identifier　urn:oid:1.2.392.100495.20.3.32.都道府県OID番号  \n　　（都道府県OID番号は、都道府県番号2桁の先頭に１をつけた3桁の番号）",
        "requirements" : "多くの場合、資格には特定の識別子が割り当てられる。"
      },
      {
        "id" : "Practitioner.qualification.code",
        "path" : "Practitioner.qualification.code",
        "definition" : "資格のコード化された表現。",
        "comment" : "すべての用語の使用がこの一般的なパターンに適合するわけではない。いくつかのケースでは、モデルはCodeableConceptを使用せず、Codingを直接使用し、テキスト、コーディング、翻訳、要素間の関係、および事前・事後の用語結合を管理するための独自の構造を提供することが望ましい。"
      },
      {
        "id" : "Practitioner.qualification.period",
        "path" : "Practitioner.qualification.period",
        "definition" : "資格が有効な期間。",
        "comment" : "使用のコンテキストは、範囲全体が適用されるか（例：「患者はこの時間範囲で病院の入院患者であった」）、範囲内の1つの値が適用されるか（例：「この2つの時間の間に患者に与える」）を指定する。  \n期間は、期間(経過時間の尺度)には使用されない。[Duration](http://hl7.org/fhir/R4/datatypes.html#Duration)を参照のこと。",
        "requirements" : "資格は期間限定のものが多く、取り消されることもある。"
      },
      {
        "id" : "Practitioner.qualification.issuer",
        "path" : "Practitioner.qualification.issuer",
        "definition" : "資格を規制し、発行する機関",
        "comment" : "参照は実際のFHIRリソースへの参照でなければならず、解決可能でなければならない。解決は URL からの検索、またはリソースタイプによって、絶対参照を正規の URL として扱い、ローカルのレジストリ/リポジトリで検索することで行うことができる。"
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber",
        "path" : "Practitioner.qualification",
        "sliceName" : "narcoticPrescriptionLicenseNumber",
        "min" : 0,
        "max" : "47"
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.identifier",
        "path" : "Practitioner.qualification.identifier",
        "short" : "都道府県別 麻薬施用者免許番号"
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.identifier.system",
        "path" : "Practitioner.qualification.identifier.system",
        "short" : "麻薬施用者免許番号OIDを格納。OIDは右記のルールに従う。urn:oid:1.2.392.100495.20.3.32.[1(固定)+都道府県番号(２桁)] 【詳細参照】",
        "definition" : "麻薬施用者免許番号OIDを格納。OIDは右記のルールに従う。urn:oid:1.2.392.100495.20.3.32.[1(固定)+都道府県番号(２桁)]",
        "comment" : "麻薬施用者免許番号OIDを格納。OIDは右記のルールに従う。urn:oid:1.2.392.100495.20.3.32.[1(固定)+都道府県番号(２桁)]。  \n都道府県毎のOIDを以下に示す。  \n　- urn:oid:1.2.392.100495.20.3.32.101(北海道)  \n　- urn:oid:1.2.392.100495.20.3.32.102(青森県)  \n　- urn:oid:1.2.392.100495.20.3.32.103(岩手県)  \n　- urn:oid:1.2.392.100495.20.3.32.104(宮城県)  \n　- urn:oid:1.2.392.100495.20.3.32.105(秋田県)  \n　- urn:oid:1.2.392.100495.20.3.32.106(山形県)  \n　- urn:oid:1.2.392.100495.20.3.32.107(福島県)  \n　- urn:oid:1.2.392.100495.20.3.32.108(茨城県)  \n　- urn:oid:1.2.392.100495.20.3.32.109(栃木県)  \n　- urn:oid:1.2.392.100495.20.3.32.110(群馬県)  \n　- urn:oid:1.2.392.100495.20.3.32.111(埼玉県)  \n　- urn:oid:1.2.392.100495.20.3.32.112(千葉県)  \n　- urn:oid:1.2.392.100495.20.3.32.113(東京都)  \n　- urn:oid:1.2.392.100495.20.3.32.114(神奈川)  \n　- urn:oid:1.2.392.100495.20.3.32.115(新潟県)  \n　- urn:oid:1.2.392.100495.20.3.32.116(富山県)  \n　- urn:oid:1.2.392.100495.20.3.32.117(石川県)  \n　- urn:oid:1.2.392.100495.20.3.32.118(福井県)  \n　- urn:oid:1.2.392.100495.20.3.32.119(山梨県)  \n　- urn:oid:1.2.392.100495.20.3.32.120(長野県)  \n　- urn:oid:1.2.392.100495.20.3.32.121(岐阜県)  \n　- urn:oid:1.2.392.100495.20.3.32.122(静岡県)  \n　- urn:oid:1.2.392.100495.20.3.32.123(愛知県)  \n　- urn:oid:1.2.392.100495.20.3.32.124(三重県)  \n　- urn:oid:1.2.392.100495.20.3.32.125(滋賀県)  \n　- urn:oid:1.2.392.100495.20.3.32.126(京都府)  \n　- urn:oid:1.2.392.100495.20.3.32.127(大阪府)  \n　- urn:oid:1.2.392.100495.20.3.32.128(兵庫県)  \n　- urn:oid:1.2.392.100495.20.3.32.129(奈良県)  \n　- urn:oid:1.2.392.100495.20.3.32.130(和歌山県)  \n　- urn:oid:1.2.392.100495.20.3.32.131(鳥取県)  \n　- urn:oid:1.2.392.100495.20.3.32.132(島根県)  \n　- urn:oid:1.2.392.100495.20.3.32.133(岡山県)  \n　- urn:oid:1.2.392.100495.20.3.32.134(広島県)  \n　- urn:oid:1.2.392.100495.20.3.32.135(山口県)  \n　- urn:oid:1.2.392.100495.20.3.32.136(徳島県)  \n　- urn:oid:1.2.392.100495.20.3.32.137(香川県)  \n　- urn:oid:1.2.392.100495.20.3.32.138(愛媛県)  \n　- urn:oid:1.2.392.100495.20.3.32.139(高知県)  \n　- urn:oid:1.2.392.100495.20.3.32.140(福岡県)  \n　- urn:oid:1.2.392.100495.20.3.32.141(佐賀県)  \n　- urn:oid:1.2.392.100495.20.3.32.142(長崎県)  \n　- urn:oid:1.2.392.100495.20.3.32.143(熊本県)  \n　- urn:oid:1.2.392.100495.20.3.32.144(大分県)  \n　- urn:oid:1.2.392.100495.20.3.32.145(宮崎県)  \n　- urn:oid:1.2.392.100495.20.3.32.146(鹿児島県)  \n　- urn:oid:1.2.392.100495.20.3.32.147(沖縄県)"
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.identifier.value",
        "path" : "Practitioner.qualification.identifier.value",
        "short" : "都道府県別　麻薬施用者免許番号 【詳細参照】",
        "comment" : "都道府県別　麻薬施用者免許番号"
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.identifier.assigner",
        "path" : "Practitioner.qualification.identifier.assigner",
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
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.code",
        "path" : "Practitioner.qualification.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicalLicenseCertificate_CS",
              "code" : "narcotics-practitioner"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicalLicenseCertificate_VS"
        }
      },
      {
        "id" : "Practitioner.qualification:narcoticPrescriptionLicenseNumber.issuer",
        "path" : "Practitioner.qualification.issuer",
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
        "id" : "Practitioner.qualification:medicalRegistrationNumber",
        "path" : "Practitioner.qualification",
        "sliceName" : "medicalRegistrationNumber",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Practitioner.qualification:medicalRegistrationNumber.identifier",
        "path" : "Practitioner.qualification.identifier",
        "short" : "医籍登録番号"
      },
      {
        "id" : "Practitioner.qualification:medicalRegistrationNumber.identifier.system",
        "path" : "Practitioner.qualification.identifier.system",
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber"
      },
      {
        "id" : "Practitioner.qualification:medicalRegistrationNumber.identifier.value",
        "path" : "Practitioner.qualification.identifier.value",
        "short" : "医籍登録番号",
        "comment" : "医籍登録番号"
      },
      {
        "id" : "Practitioner.qualification:medicalRegistrationNumber.identifier.assigner",
        "path" : "Practitioner.qualification.identifier.assigner",
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
        "id" : "Practitioner.qualification:medicalRegistrationNumber.code",
        "path" : "Practitioner.qualification.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicalLicenseCertificate_CS",
              "code" : "medical-registration"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicalLicenseCertificate_VS"
        }
      },
      {
        "id" : "Practitioner.qualification:medicalRegistrationNumber.issuer",
        "path" : "Practitioner.qualification.issuer",
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
        "id" : "Practitioner.communication",
        "path" : "Practitioner.communication",
        "short" : "医療従事者が患者とのコミュニケーションで使用できる言語",
        "definition" : "医療従事者が患者とのコミュニケーションで使用できる言語。",
        "comment" : "このように正確なケーシングを持つ構造体 aa-BB は、ロケールのために最も広く使われている表記法の一つ。しかし、すべてのシステムがこれをコード化しているわけではなく、代わりにフリーテキストとしている。そのため、データ型としてはコードの代わりに CodeableConcept を使用している。",
        "requirements" : "医療従事者がどの言語を話すかを知ることは、患者とのコミュニケーションを円滑にするのに役立つ。"
      }
    ]
  }
}

```
