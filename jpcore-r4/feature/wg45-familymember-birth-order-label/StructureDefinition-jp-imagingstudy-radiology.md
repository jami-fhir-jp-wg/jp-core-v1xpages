# JP Core ImagingStudy Radiology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ImagingStudy Radiology Profile**

## Resource Profile: JP Core ImagingStudy Radiology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ImagingStudy_Radiology
* **項目**: *Title*
  * **内容**: JP Core ImagingStudy Radiology Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはImagingStudyリソースに対して、放射線検査画像のデータを送受信するための制約と拡張を定めたものである。 

本プロファイル説明は、患者に付属する画像検査情報について、情報の登録や検索、取得のために、FHIR ImagingStudyリソースを使用するにあたっての、最低限の制約を記述したものである。

ImagingStudy リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、一般的な画像検査でDICOMで定義される画像情報を取り扱うことを想定している。Non-DICOMの画像を取り扱う場合は[Mediaリソース](http://www.hl7.org/fhir/R4/media.html)を利用すること。

ImagingStudy リソースはDICOM画像検査において作成された内容（主としてDICOM タグ情報に相当する）を表す。一つの検査はシリーズを構成しており、それぞれのシリーズにはService-Object Pairインスタンス（SOPインスタンス）が一般的なタグ情報の中に含まれる。一つのシリーズにはただ一つのモダリティ(例えば単純エックス線撮影，CT，MRI，超音波のいずれか）から成り立つが、一つの検査は異なるモダリティによる複数のシリーズから構成されることがある。

* Patientリソースから指定された日時、期間での画像検査情報の参照
* ImagingStudyリソースから指定したモダリティに関する検査の画像検査情報の参照
* ImagingStudyリソースから指定したモダリティに関するシリーズの画像検査情報の参照
* ImagingStudyリソースから指定した部位の画像検査情報の参照
* ImagingStudyリソースから使用可能な画像検査情報の参照
* Encounterリソースから画像検査を実施した検査の画像検査情報の参照
* ServiceRequestリソースから画像検査を実施した検査の画像検査情報の参照

なお、ServiceRequestリソースは画像検査を実施するために発生するオーダ情報等を格納しうるリソースであるが、オーダリング情報の標準化の状況や情報の粒度によりユースケースが異なることが想定される。よって、ServiceRequestから提供され本リソースにマッピングされるべき情報の定義についてはServiceRequestおよび一連のTASK管理あるいはProcedureに関連するユースケースで別途検討される。

## スコープ

ImagingStudyリソースはDICOMのstudy, seriesおよび画像に関連する情報を提供し、それらの情報をどのようにして取り出すか（native DICOMフォーマットで受け取るか、JPEGなどの一般的な画像情報に変換したものを受けとるかなど）を示す。ImagingStudyは一つのDICOM studyのすべての情報を網羅するために用いられる。

このリソースでは32ビットのタグ（DICOMタグと呼ばれる）で示されるDICOMアトリビュート（タグ情報）をmappingするためのエレメントが用意されている。 DICOMタグは4桁の16進数がコンマで区切られたペア（例 (0008, 103E) )として表現される。それぞれのタグ情報に関する名称と値のペアについては[DICOM Part6 Data Dictionary](https://dicom.nema.org/medical/dicom/current/output/html/part06.html)に記載されている。さらに、情報体の中のタグ情報の用途については[DICOM Part 3 Information Object Definitions](https://dicom.nema.org/medical/dicom/current/output/html/part03.html)に記載されている。Number of Instances in StudyなどのDICOMにおける問い合わせモデルに関する情報は[DICOM Part 4 Annex C](https://dicom.nema.org/medical/dicom/current/output/html/part04.html#chapter_C)で参照できる。

最も単純な場合、ImagingStudyはDICOM query（例えばQIDO-RS）を行うことなく重要なDICOMタグ情報へのアクセスを提供する。一方で、DICOMの実画像情報などのインスタンスはImagingStudyリソースには保存されないため、この情報を保存するためにはDICOM WADO-RSサーバーやほかのストレージ機能を利用する必要がある。 （FHIRではREST APIを用いることが想定されており，親和性の観点からはDICOM web accessの利用が想定される。）

ImagingStudyは一つのDICOM studyに対してのリファレンスであり、またそのスタディのサブセットに対する参照にも利用できる。一方で、複数のImagingStudyリソースが同じDICOM studyを参照することや，同じDICOM study内の異なるサブセット（シリーズ）を参照することもあり得る。

上記のようなDICOMに関連して用いられるImagingStudyの用途が本プロファイルでのスコープであり、ImagingStudyの情報項目の１つを取り扱う際に必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md), [JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md) and [JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md)
* Examples for this Profile: [ImagingStudy/jp-imagingstudy-radiology-example-1](ImagingStudy-jp-imagingstudy-radiology-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-imagingstudy-radiology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-imagingstudy-radiology.csv), [Excel](StructureDefinition-jp-imagingstudy-radiology.xlsx), [Schematron](StructureDefinition-jp-imagingstudy-radiology.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）、あるいは、データが送信システムに存在する場合はサポートされなければならないことを意味する。（Must Support）。

#### 必須項目

ImagingStudyリソースは、次の要素を持たなければならない。

* status : 検査項目情報の状態は必須である
* subject : このリソースが示す検査項目がどの患者のものかを示すため、参照するpatientリソース定義を必須とした

#### Must Support

ImagingStudyリソースは該当する情報が存在する場合、次の要素を持たなければならない。

* identifier : DICOM画像が存在する場合、DICOMタグのStudyInstance UID (0020,000D)が保持される必要がある。Accession Number and Issuer (0080,0050)+(0080,0051) あるいは Study ID (0020,0010)の設定も可能だが、JP CoreではStudyInstance UIDをMust Supportとし、他は任意とする（複数のidentifierの設定は可能）。必要に応じてオーダ番号等を持つことも可能である
* series.modality : DICOM画像が存在する場合シリーズが取得されたモダリティを示す、DICOMでは必須情報となっておりDICOMタグ(0008,0060)の情報が格納される
* series.performer.actor : 組織または撮影者を示す具体的には実施医あるいは操作者（診療放射線技師）を示す関連するリソースへのreferenceである。DICOMタグの(0008, 1050) | (0008, 1052) | (0008, 1070) | (0008, 1072) とマッピングされる
* series.instance.uid : 画像のユニークID、DICOMタグ(0008,0018)にある値をそのまま設定する
* series.instance.sopClass : SOPクラスUID、DICOMタグ(0008,0016)にある値をそのまま設定する

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 注意事項

### Mappings

ImagingStudyはDICOM tagとの対応が重要である。各エレメントとDICOM tagのマッピングについては[Resource ImagingStudy - Mappings](https://hl7.org/fhir/R4/imagingstudy-mappings.html#dicom)を参照すること。

### ProcedureCode

ProcedureCodeについてはRadLex lexiconに定義されているものを利用することを想定している。これは本家の仕様に基づくものである。一方で、JJ1017についてはこの利用を制限するものでは無いが、JJ1017には手技に関連する情報以外に部位情報や左右の情報を含むため、利用する場合は以下に示すbodySiteやlateralityとの整合性を確保する必要がある。

### BodySiteとlaterality

ImagingStudyのbodySiteエレメントには原則としてDICOMタグに含まれる部位情報が設定されるのが原則である。これはオーダ情報等の別の管理情報には左右や部位の間違いが含まれることがあり、実際の撮影時に修正されることがあるためである。ただし、DICOMに部位情報が含まれない場合はJJ1017Pなどのコードあるいはそのサブセットを用い指定することを許容する。ただし、lateralityエレメントとの整合性をとり、部位情報が正しいものであることを確認すること。 また、DICOMではSNOMED-CTとのmappingがなされており、DICOMで定義されているSNOMED-CTのコードの利用は無償で可能となる契約がなされている。 BodySite等でDICOMでmappingされているSNOMED-CTをCodeSystemとして利用する場合、コードに対応するdisplay textの表記にはSNOMED-CTで規定されている表記を用いること。同様にDICOMをCodeSystemとして指定する際はBody Part Examined (0018,0015)に規定されている表記を指定すること。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

代表的な検索パラメータを示す。ここに例示されない検索項目であっても[Common Parameters](https://www.hl7.org/fhir/R4/search.html#all)および[オリジナルの定義](https://www.hl7.org/fhir/R4/imagingstudy.html#search)でサポートされているものは対象とすること。また、複合検索が必要となることも想定されるため、ユースケースに応じ適宜拡張すること。

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | `GET [base]/ImagingStudy?identifier=urn:oid:2.16.124.999999.9999.1154777499.30246.19789.3503430045` |
| SHALL | status | token | `GET [base]/ImagingStudy?status=available` |
| SHOULD | patient | reference | `GET [base]/ImagingStudy?patient=123` |
| SHOULD | patient,modality | reference,token | `GET [base]/ImagingStudy?patient=123&modality=CT` |
| SHOULD | patient,bodysite | reference,token | `GET [base]/ImagingStudy?patient=123&bodysite=T-15460` |
| SHOULD | patient,started | reference,date | `GET [base]/ImagingStudy?patient=123&started=eq2021-06-25` |
| SHOULD | patient,started,modality,bodysite | reference,date,token,token | `GET [base]/ImagingStudy?patient=123&started=eq2021-06-18&modality=CT&bodysite=T-15460` |
| SHOULD | patient, started, modality | reference, date, token | `GET [base]/ImagingStudy?patient=123&started=eq2021-06-18&modality=CT` |
| SHOULD | encounter | reference | `GET [base]/ImagingStudy?encounter=Encounter/456` |

#### 操作詳細

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。（**SHALL**） ImagingStudyリソースでは検索の多様性が求められるため、多くは推奨検索パラメータとしているが、以下は必須のサポートとする。

* identifier
* status

##### 推奨検索パラメータ

次の検索パラメータはサポートすることが推奨される。（**SHOULD**）

1. 患者中心での検索：対象患者（= Patientリソース）を条件とした検索をサポートすることが望ましい

```
GET [base]/ImagingStudy?patient={reference}

```

例：

```
GET [base]/ImagingStudy?patient=123

```


1. モダリティ中心の検索：対象患者（= Patientリソース）と撮影に使用されたモダリティを条件とした検索をサポートすることが望ましい
なお検索パラメターmodalityは[定義済み検索パラメーター](https://www.hl7.org/fhir/R4/searchparameter-registry.html)にseries.modalityを対象として定義されているため、ImagingStudy.modalityを対象としていないことに注意すること

```
GET [base]/ImagingStudy?patient={reference}&modality={token}

```

例：

```
GET [base]/ImagingStudy?patient=123&modality=CT

```


1. 部位中心の検索：対象患者（= Patientリソース）と撮影の対象となった撮影部位を条件とした検索をサポートすることが望ましい

```
GET [base]/ImagingStudy?patient={reference}&bodysite={token}

```

例：

```
GET [base]/ImagingStudy?patient=123&bodysite=T-15460

```


1. 日付中心の検索：対象患者（= Patientリソース）と撮影の日時を条件とした検索をサポートすることが望ましい

```
GET [base]/ImagingStudy?patient={reference}&started={date}

```

例：

```
GET [base]/ImagingStudy?patient=123&started=eq2021-06-25

```


1. 日付中心の検索：対象患者（= Patientリソース）と撮影の日時を条件とした検索をサポートすることが望ましい

```
GET [base]/ImagingStudy?patient={reference}&started={date}

```

例：

```
GET [base]/ImagingStudy?patient=123&started=eq2021-06-25

```


1. 複数の条件を組み合わせた検索：対象患者（= Patientリソース）、撮影の日時、撮影に使用されたモダリティ、撮影の対象となった撮影部位を条件とした検索をサポートすることが望ましい
なお検索パラメターmodalityは[定義済み検索パラメーター](https://www.hl7.org/fhir/R4/searchparameter-registry.html)にseries.modalityを対象として定義されているため、ImagingStudy.modalityを対象としていないことに注意すること

```
GET [base]/ImagingStudy?patient={reference}&started={date}&modality={token}&bodysite={token}

```

例：

```
GET [base]/ImagingStudy?patient=123&started=eq2021-06-18&modality=CT&bodysite=T-15460

```


1. 来院情報中心の検索：来院情報（= Encounterリソース）を条件とした検索をサポートすることが望ましい

```
GET [base]/ImagingStudy?encounter={reference}

```

例：

```
GET [base]/ImagingStudy?encounter=456

```


##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**放射線画像検査**](ImagingStudy-jp-imagingstudy-radiology-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-imagingstudy-radiology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology",
  "version" : "1.3.0-dev",
  "name" : "JP_ImagingStudy_Radiology",
  "title" : "JP Core ImagingStudy Radiology Profile",
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
  "description" : "このプロファイルはImagingStudyリソースに対して、放射線検査画像のデータを送受信するための制約と拡張を定めたものである。",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ImagingStudy",
        "path" : "ImagingStudy",
        "short" : "DICOM画像検査で作成されたコンテンツの表現。スタディは一連のシリーズで構成され、各シリーズには、共通のコンテキストで取得または生成された一連のサービスオブジェクトペアインスタンス（SOPインスタンス-画像またはその他のデータ）が含まれる、シリーズは1つのモダリティ（X線、CT、MR、超音波など）のみだがスタディには複数の異なるモダリティのシリーズが含まれる場合がある"
      },
      {
        "id" : "ImagingStudy.identifier",
        "path" : "ImagingStudy.identifier",
        "short" : "スタディ全体の識別子",
        "definition" : "DICOMスタディインスタンスUIDやアクセッション番号などのImagingStudyの識別子。",
        "comment" : "DICOMスタディインスタンスUIDのエンコードについては、[Imaging Study Implementation Notes]（imagingstudy.html#notes）の説明を参照。アクセッション番号はACSN識別子タイプを使用する必要がある。  \n【JP-Core仕様】Study Instance UIDは画像が存在する場合に必須、その他は任意。StudyInstanceUID (0020,000D)",
        "requirements" : "ImagingStudyに1つ以上のシリーズ要素が存在する場合、1つのDICOMスタディUID識別子が存在する必要がある（[DICOM PS 3.3 C.7.2]（https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.html）を参照） 。",
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.status",
        "path" : "ImagingStudy.status",
        "definition" : "ImagingStudyの現在のステータス",
        "comment" : "不明(unknown)は「その他」を表すものではない。定義されたステータスの1つを適用する必要がある。不明(unknown)は、オーサリングシステムが現在のステータスを確認できない場合に使用される。  \n【JP-Core仕様】リソースの状態。",
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.modality",
        "path" : "ImagingStudy.modality",
        "short" : "実際の取得モダリティーの場合、モダリティーの全シリーズ。対応するDICOM tag: (0008, 0061)",
        "definition" : "実際の取得モダリティであるすべてのseries.modality値のリスト、つまりDICOMコンテキストグループ29（値セットOID 1.2.840.10008.6.1.19）の値。",
        "comment" : "コードは、列挙型またはコードリストで、DICOMのモダリティコードを利用する。  \n・モダリティのコードを設定。  \n・Seriesの階層の(0008,0060)を集約する、または(0008,0060)　と　(0008, 0061) のOR。但し、重複する値は1つにまとめて表現。",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "ImagingStudy.subject",
        "path" : "ImagingStudy.subject",
        "short" : "検査対象者",
        "definition" : "画像検査の対象、通常は患者。",
        "comment" : "QAファントムはDeviceリソースとして記録できる。複数の被験者（マウスなど）の場合はGroupリソースで記録できる。  \n・患者(Patient)リソースを参照。  \n・DICOMタグ値を参照する場合は、tag mappingの通りグループ0010（患者情報に関連する情報を扱うグループ）を参照。  \n・不明患者は、空もしくは不明を指すPatientリソースを参照。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.encounter",
        "path" : "ImagingStudy.encounter",
        "short" : "この画像検査が関連しているEncounterリソース",
        "definition" : "このImagingStudyが行われる診療イベント（患者と医療提供者の相互作用など）。",
        "comment" : "これは通常、イベントが発生したEncounterであるが、一部のイベントは、Encounterの正式な完了の前または後に開始される場合があり、それでもそのEncounterのコンテキストに関連付けられている（例：入院前の検査）  \n受付を示すEncounterリソースを参照。  \n（補足：訪問診療では医療者が患者と会った事を指す）",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.started",
        "path" : "ImagingStudy.started",
        "short" : "スタディの開始時期",
        "definition" : "スタディの開始日時",
        "comment" : "検査開始日時　もしくは　撮影装置へ患者情報が届いた/入力した日時。"
      },
      {
        "id" : "ImagingStudy.basedOn",
        "path" : "ImagingStudy.basedOn",
        "short" : "実施された依頼",
        "definition" : "この画像検査の実施につながった診断依頼のリスト。",
        "comment" : "参照は、実在するFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的に使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n依頼元のServiceRequestを紐付ける。",
        "requirements" : "グループ化された手技をサポートすること。（一つの画像検査に複数の種類の手技が含まれることがある。例：胸部/腹部/骨盤部 CT）"
      },
      {
        "id" : "ImagingStudy.referrer",
        "path" : "ImagingStudy.referrer",
        "short" : "依頼紹介医師",
        "definition" : "依頼紹介医師",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n依頼医師。必須ではない（ServiceRequestから参照できるため）。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.interpreter",
        "path" : "ImagingStudy.interpreter",
        "short" : "画像の読影者",
        "definition" : "画像の読影者",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n読影医",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.endpoint",
        "path" : "ImagingStudy.endpoint",
        "short" : "スタディにアクセスするエンドポイント（画像へのURI）",
        "definition" : "スタディへのアクセス（クエリ、表示、取得など）を提供するネットワークサービス。 DICOMエンドポイントの使用については、実装ノートを参照。スタディレベルのエンドポイントは、同じEndpoint.connectionTypeを持つシリーズレベルのエンドポイントによってオーバーライドされない限り、スタディの各シリーズに適用される。",
        "comment" : "典型的なエンドポイントタイプには、RESTful APIを使用してネイティブまたはレンダリング（JPG、PNGなど）形式でDICOMインスタンスを取得するために使用されるDICOM WADO-RSが含まれる。 DICOM WADO-URI。HTTPクエリベースのアプローチを使用することを除いて、ネイティブインスタンスまたはレンダリングされたインスタンスを同様に取得できる。 DICOM QIDO-RS。実際のインスタンスを取得せずに、DICOM情報のRESTfulクエリを可能にする。またはIHEInvoke Image Display（IID）。これは、イメージングWebビューアの標準的な呼び出しを提供する。  \nDICOMのリソース位置を指定。基本的には1つ。",
        "requirements" : "スタディまたはスタディに含まれるシリーズやインスタンスを閲覧（例：IHE’s IID profile）したり、取得（例：DICOM’s WADO-URI and WADO-RS）したりするためのアクセス方法。スタディレベルのbaseLocationは、同じタイプのシリーズレベルのbaseLocationにてオーバーライドされない限り、スタディ内の各シリーズに適用される。"
      },
      {
        "id" : "ImagingStudy.numberOfSeries",
        "path" : "ImagingStudy.numberOfSeries",
        "short" : "スタディに含まれるシリーズ数",
        "definition" : "調査のシリーズ数。指定されたこの値は、リソースの可用性、セキュリティ、またはその他の要因により、このリソースに含まれる一連の要素の数よりも大きい場合がある。系列要素が存在する場合、この要素が存在する必要がある。",
        "comment" : "32ビット数で表す。これより大きい値の場合は、10進数を使用する。  \nシリーズの数"
      },
      {
        "id" : "ImagingStudy.numberOfInstances",
        "path" : "ImagingStudy.numberOfInstances",
        "short" : "スタディ関連のインスタンス数",
        "definition" : "スタディの中のSOPインスタンスの数。指定されたこの値は、リソースの可用性、セキュリティ、またはその他の要因により、このリソースに含まれるインスタンス要素の数よりも大きい場合がある。インスタンス要素が存在する場合は、この要素が存在する必要がある。",
        "comment" : "32ビット数で表す。これより大きい値の場合は、10進数を使用する。  \nイメージ（インスタンス）の数。"
      },
      {
        "id" : "ImagingStudy.procedureReference",
        "path" : "ImagingStudy.procedureReference",
        "short" : "実施されたProcedure への参照",
        "definition" : "このImagingStudyが含まれていたprocedure リソースへの参照。",
        "comment" : "参照は、実在するFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n進捗状況に関するProcedureリソースを参照。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.procedureCode",
        "path" : "ImagingStudy.procedureCode",
        "short" : "実施されたProcedureのコード",
        "definition" : "実施されたProcedureのタイプを表すコード。",
        "comment" : "すべてのターミノロジの使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、`Coding`を直接使用して、テキスト、`Coding`、翻訳、および要素間の関係と調整前後の関係を管理するための独自の構造を提供する必要がある。  \nエラーコードなどを記載",
        "binding" : {
          "strength" : "required",
          "description" : "コードは http://playbook.radlex.org/playbook/SearchRadlexAction に該当があれば使わなければならない。ただし、実施された行為のタイプにこれらのコードがなじまない場合は他のコードが利用される可能性がある。",
          "valueSet" : "http://playbook.radlex.org/playbook/SearchRadlexAction"
        }
      },
      {
        "id" : "ImagingStudy.location",
        "path" : "ImagingStudy.location",
        "short" : "ImagingStudy が実施された場所",
        "definition" : "ImagingStudyが実施された主要な物理的な場所。",
        "comment" : "参照は、実在のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n撮影室を示すLocationリソースを参照。",
        "requirements" : "イベントをレコードが保持される可能性が高い場所に結び付け、イベントの発生に関するコンテキストを提供する。 (たとえば、専用の医療環境の内外で発生した場合など。）"
      },
      {
        "id" : "ImagingStudy.reasonCode",
        "path" : "ImagingStudy.reasonCode",
        "short" : "スタディが依頼された理由",
        "definition" : "ImagingStudyが要求された理由を示す臨床状態の説明。",
        "comment" : "すべてのターミノロジの使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、`Coding`を直接使用して、テキスト、`Coding`、翻訳、および要素間の関係と調整前後の関係を管理するための独自の構造を提供する必要がある。  \nJP Coreでは未使用"
      },
      {
        "id" : "ImagingStudy.reasonReference",
        "path" : "ImagingStudy.reasonReference",
        "short" : "スタディが実施された理由",
        "definition" : "このスタディを正当化する別のリソースを示す。",
        "comment" : "参照は、実在のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n実施理由が書かれたDiagnosticReportリソースを参照。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/Media",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
              "http://hl7.org/fhir/StructureDefinition/DocumentReference"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.note",
        "path" : "ImagingStudy.note",
        "short" : "ユーザーが定義したコメント",
        "definition" : "推奨されるDICOMマッピングによると、この要素はスタディの説明属性（0008,1030）から派生している。画像検査に関する観察または所見は、この要素に記述するのではなく、Observationのような別のリソースに記録する必要がある。",
        "comment" : "構造化された注釈（アノテーション）を持たないシステムの場合、作成者や時間なしで単一の注釈を簡単に伝達できる。情報を変更する可能性があるため、この要素をナラティブに含める必要がある場合がある。  \n*注釈は、計算機処理れきる「変更」情報を伝達するために使用されるべきではない*。 （ユーザーの行動を強制することはほとんど不可能であるため、これはSHOULDとする）。  \nコメント（Annotation型による記述）"
      },
      {
        "id" : "ImagingStudy.description",
        "path" : "ImagingStudy.description",
        "short" : "機関生成の記述",
        "definition" : "スタディのイメージングマネージャの説明。実施されたスタディ（コンポーネント）の機関生成の説明または分類。",
        "comment" : "検査に関するフリーコメント。"
      },
      {
        "id" : "ImagingStudy.series",
        "path" : "ImagingStudy.series",
        "short" : "個々のスタディはインスタンスの１以上のシリーズを有する",
        "definition" : "個々のスタディは画像か他の内容の１以上のシリーズを有する。",
        "comment" : "シリーズ（大まかな画像のグループ）"
      },
      {
        "id" : "ImagingStudy.series.uid",
        "path" : "ImagingStudy.series.uid",
        "short" : "そのシリーズに対するDICOM Series Instance UID",
        "definition" : "そのシリーズに対するDICOM Series Instance UID",
        "comment" : "[DICOM PS3.3 C.7.3]（https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.3.html）を参照。  \nstudy階層のidentifierと同じ概念。(0020,000E)にseries固有のUIDが付与される。"
      },
      {
        "id" : "ImagingStudy.series.number",
        "path" : "ImagingStudy.series.number",
        "short" : "このシリーズの数値型識別子",
        "definition" : "このシリーズの数値型識別子",
        "comment" : "32ビット数で表す。これより大きい値の場合は、10進数を使用する。  \n上記UIDとは別に、ユーザー（または装置）が自由に決められる番号。"
      },
      {
        "id" : "ImagingStudy.series.modality",
        "path" : "ImagingStudy.series.modality",
        "short" : "シリーズが取得されたモダリティ",
        "definition" : "シリーズが取得されたモダリティー",
        "comment" : "JP CoreではDICOMのモダリティコードを利用する。SNOMED CTは推奨しない。  \n（参照先）   \nhttp://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS.html",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "ImagingStudy.series.description",
        "path" : "ImagingStudy.series.description",
        "short" : "シリーズの人間可読な形式での短い要約記述",
        "definition" : "シリーズの記述。",
        "comment" : "シリーズごとにつけられるフリーコメント。"
      },
      {
        "id" : "ImagingStudy.series.numberOfInstances",
        "path" : "ImagingStudy.series.numberOfInstances",
        "definition" : "スタディの中のSOPインスタンスの数。指定されたこの値は、リソースの可用性、セキュリティ、またはその他の要因により、このリソースに含まれるインスタンス要素の数よりも大きい場合がある。インスタンス要素が存在する場合は、この要素が存在する必要がある。",
        "comment" : "32ビット数で表す。これより大きい値の場合は、10進数を使用する。  \nシリーズに含まれる画像枚数"
      },
      {
        "id" : "ImagingStudy.series.endpoint",
        "path" : "ImagingStudy.series.endpoint",
        "short" : "シリーズにアクセスするエンドポイント（画像へのURI）",
        "definition" : "シリーズへのアクセス（クエリ、表示、取得など）を提供するネットワークサービス。 DICOMエンドポイントの使用については、実装ノートを参照。シリーズレベルのエンドポイントは、同じEndpoint.connectionTypeを持つシリーズレベルのエンドポイントによってオーバーライドされない限り、スタディの各シリーズに適用される。",
        "comment" : "典型的なエンドポイントタイプには、RESTful APIを使用してネイティブまたはレンダリング（JPG、PNGなど）形式でDICOMインスタンスを取得するために使用されるDICOM WADO-RSが含まれる。 DICOM WADO-URI。HTTPクエリベースのアプローチを使用することを除いて、ネイティブインスタンスまたはレンダリングされたインスタンスを同様に取得できる。 DICOM QIDO-RSは、実際のインスタンスを取得せずにDICOM情報のRESTfulクエリを可能にする。  \nstudy階層のendpointと同じ。DICOMのリソース位置を指定。基本的には1つ。"
      },
      {
        "id" : "ImagingStudy.series.bodySite",
        "path" : "ImagingStudy.series.bodySite",
        "short" : "検査した人体部位",
        "definition" : "検査対象の解剖学的構造。   \nbodySiteは、画像化された身体部分の左右差を示している場合がある。その場合、ImagingStudy.series.lateralityのコンテンツと一致している必要がある。",
        "comment" : "コードは、列挙型またはコードリストで、どの部位の検査なのかを示す。フリーではなく、DICOM定義書の中で示される語句（コード）をデフォルトとするが、JJ1017Pの小部位コードの利用を許容する。",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BodySite"
            }
          ],
          "strength" : "example",
          "description" : "DICOM tagに設定されているコードをデフォルトとするが、JJ1017Pの小部位コードの利用を許容する。",
          "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
        }
      },
      {
        "id" : "ImagingStudy.series.laterality",
        "path" : "ImagingStudy.series.laterality",
        "short" : "人体部位の左右識別",
        "definition" : "検査した（おそらく対になっている）解剖学的構造の左右識別。  \n例：左膝、両方の肺、または対になっていない腹部。存在する場合は、ImagingStudy.series.bodySiteに示されている左右差情報と一致している必要がある。",
        "comment" : "コードは、列挙型またはコードリストで、どの部位の検査なのかを示す。フリーではなく、DICOM定義書の中で示される語句（コード）をデフォルトとするが、JJ1017Pの左右コードの利用を許容する。",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "Laterality"
            }
          ],
          "strength" : "example",
          "description" : "DICOM定義書の中で示される語句（コード）をデフォルトとするが、JJ1017Pの左右コードの利用を許容する。",
          "valueSet" : "http://hl7.org/fhir/ValueSet/bodysite-laterality"
        }
      },
      {
        "id" : "ImagingStudy.series.specimen",
        "path" : "ImagingStudy.series.specimen",
        "short" : "画像検査をした検体",
        "definition" : "例えば、生検のスライド全体の画像化のために画像化された標本。通常の放射線画像検査では使用されない。（DICOMを用いた病理画像検査で用いられる）",
        "comment" : "参照は、実在のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n【JP Core仕様】UIDは別のtagが存在するので、ユーザー側で自由に付与していい番号と思われる。"
      },
      {
        "id" : "ImagingStudy.series.started",
        "path" : "ImagingStudy.series.started",
        "short" : "シリーズの開始時期",
        "definition" : "シリーズの開始日付、日時。",
        "comment" : "シリーズ単位での開始時刻。最初にシリーズを取得 or 定義した時刻。"
      },
      {
        "id" : "ImagingStudy.series.performer",
        "path" : "ImagingStudy.series.performer",
        "short" : "シリーズの実施者",
        "definition" : "シリーズを実施し、関係した人を示す。",
        "comment" : "シリーズを実施した人がわからない場合は、その組織が記録される場合がある。患者または関係者は、患者自身で取得した画像の場合など、パフォーマーである可能性がある。  \n【JP Core仕様】検査を実施した（画像を取得する操作を行った）人。  \n　　(0008,1050)Performing Physician's Name  \n　　(0008,1052)Performing Physician Identification Sequence  \n　　(0008,1070)Operators' Name  \n　　(0008,1072)Operator Identification Sequence"
      },
      {
        "id" : "ImagingStudy.series.performer.actor",
        "path" : "ImagingStudy.series.performer.actor",
        "comment" : "【JP Core仕様】組織または撮影者",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.series.instance",
        "path" : "ImagingStudy.series.instance",
        "short" : "シリーズからの単一SOPインスタンス",
        "definition" : "ひとつの画像、またはプレゼンテーションの状態など、シリーズ内の単一のSOPインスタンス。",
        "comment" : "インスタンス（画像）単位の情報"
      },
      {
        "id" : "ImagingStudy.series.instance.uid",
        "path" : "ImagingStudy.series.instance.uid",
        "comment" : "[DICOM PS3.3 C.12.1](https://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.12.html#sect_C.12.1)を参照。  \n【JP Core仕様】画像のユニークID。DICOMタグマッピングにある値をそのまま設定。",
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.series.instance.sopClass",
        "path" : "ImagingStudy.series.instance.sopClass",
        "comment" : "【JP Core仕様】SOPクラスUID。DICOMタグマッピングにある値をそのまま設定。",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/imaging-service-request-ig/ValueSet/dicom-sop-classes"
        }
      },
      {
        "id" : "ImagingStudy.series.instance.number",
        "path" : "ImagingStudy.series.instance.number",
        "comment" : "32ビット数で表す。これより大きい値の場合は、10進数を使用する。  \n【JP Core仕様】ユーザー（または装置）が自由に決められる画像ごとの番号。DICOMタグマッピングにある値をそのまま設定。"
      },
      {
        "id" : "ImagingStudy.series.instance.title",
        "path" : "ImagingStudy.series.instance.title",
        "short" : "インスタンスの記述",
        "definition" : "インスタンスの記述",
        "comment" : "【JP Core仕様】画像に対する説明。DICOMタグマッピングにある値があれば、そのまま設定  \n　　(0008,0008)Image Type  \n　　(0040,A043)Concept Name Code Sequence  \n　　(0008,0104)Code Meaning  \n　　(0042,0010)Document Title"
      }
    ]
  }
}

```
