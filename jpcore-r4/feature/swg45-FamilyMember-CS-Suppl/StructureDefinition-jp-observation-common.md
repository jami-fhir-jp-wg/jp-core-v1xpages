# JP Core Observation Common Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Common Profile**

## Resource Profile: JP Core Observation Common Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_Common
* **項目**: *Title*
  * **内容**: JP Core Observation Common Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 

## 背景および想定シナリオ

Observationリソースに対する主な用途は以下の通り。

* 体重、血圧、体温などのバイタルサイン
* 血糖値や推定GFRなどの検体検査結果
* 骨密度や胎児測定値などの画像検査結果
* 腹部圧痛などの臨床所見（※）
* 目の色など、個人的な特徴
* 喫煙歴、社会歴、家族支援、認知状態など

※ 臨床所見と疾患の境界は、医療オントロジの課題となる。一般的なガイドについては、[Observationリソースの境界](https://www.hl7.org/fhir/R4/observation.html#bnr)および[Conditionリソースの境界](https://www.hl7.org/fhir/R4/condition.html#bnr)のセクションを参照のこと。

## スコープ

Observation（検査、観察）はヘルスケアの中心的な要素であり、診断の補助、進行状況のモニタリング、基準とパターンの決定、基本情報の把握に使用される。ほとんどのObservationは、メタデータを含む単純な名前/値のペアとなる。一部のObservationは、他のObservationを論理的にグループ化したり、複数の要素から構成される場合もある。

DiagnosticReport（検査レポート）リソースは一連の検査の臨床/ワークフローの文脈を定義する。ObservationリソースはDiagnosticReportから参照されることで、検査、画像、その他の臨床および診断データから表現されるレポートを形作る。

## プロファイル定義

**Usages:**

* Derived from this Profile: [JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md), [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md), [JP Core Observation DentalOral Missing Tooth Condition Profile](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.md), [JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md)...Show 10 more,[JP Core Observation DentalOral Tooth Treatment Condition Profile](StructureDefinition-jp-observation-dentaloral-toothtreatmentcondition.md),[JP Core Observation Electrocardiogram Profile](StructureDefinition-jp-observation-electrocardiogram.md),[JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md),[JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md),[JP Core Observation Microbiology Profile](StructureDefinition-jp-observation-microbiology.md),[JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md),[JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md),[JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md),[JP Core Observation SocialHistory Profile](StructureDefinition-jp-observation-socialhistory.md)and[JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md)
* Refer to this Profile: [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md), [JP Core Encounter Profile](StructureDefinition-jp-encounter.md), [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)...Show 13 more,[JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md),[JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md),[JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md),[JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md),[JP Core Observation SocialHistory Profile](StructureDefinition-jp-observation-socialhistory.md),[JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-common)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-common.csv), [Excel](StructureDefinition-jp-observation-common.xlsx), [Schematron](StructureDefinition-jp-observation-common.sch) 

### 必須要素

次のデータ項目はデータが存在しなければならない（必須）、あるいは、データが送信システムに存在する場合はサポートされなければならない（Must Support）要素である。

#### 必須

このプロファイルでは、次の要素を持たなければならない。

* status : 検査項目情報の状態は必須である
* code : このプロファイルは何の検査項目であるかを示すため必須である

#### MustSupport

このプロファイルではMust Supportの要素は存在しない。

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 利用方法

### 派生プロファイルと対応するcategory要素の記述方法

#### 検体検査結果

プロファイル ：[JP Core Observation LabResult （検体検査）プロファイル](StructureDefinition-jp-observation-labresult.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult

第１カテゴリー 必須
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"](https://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS.html)
 category.code = "laboratory" 固定値
 category.display = "Laboratory" 固定値

#### 細菌検査結果

プロファイル ：[JP Core Observation Microbiology （微生物学検査結果）プロファイル](StructureDefinition-jp-observation-microbiology.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Microbiology

第１カテゴリー 必須
 検体検査結果と同一。

第２カテゴリー 必須
 category.system = "http://loinc.org"
 category.code = "18725-2" 固定値
 category.display = "Microbiology studies (set)" 固定値

第３カテゴリー：微生物学検査カテゴリコード 任意
 (JP Core MicrobiologyCategory ValueSet)
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_MicrobiologyCategory_CS”][JP_MicrobiologyCategory_CS]
 から選択する。（例："gram-stain"）

#### 身体所見

プロファイル ：[JP Core Observation PhysicalExam Profile （身体所見）プロファイル](StructureDefinition-jp-observation-physicalexam.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam

第１カテゴリー 必須
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"](https://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS.html)
 category.code = "exam" 固定値
 category.display = "Exam" 固定値

#### 生活背景(SocialHistory)

プロファイル ：[JP Core Observation SocialHistory Profile （生活背景）プロファイル](StructureDefinition-jp-observation-socialhistory.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_SocialHistory

第１カテゴリー 必須
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"](https://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS.html)
 category.code = "social-history" 固定値
 category.display = "Social History" 固定値

##### バイタルサイン

プロファイル ：[JP Core Observation VitalSigns Profile （バイタルサイン）プロファイル](StructureDefinition-jp-observation-vitalsigns.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns

第１カテゴリー 必須
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"](https://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS.html)
 category.code = "vital-signs" 固定値
 category.display = "Vital-signs" 固定値

第２カテゴリー 必須
 (JP Core ObservationVitalSignsCategory ValueSet)
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationVitalSignsCategory_CS"][JP_ObservationVitalSignsCategory_CS]
 から選択する。（例："blood-pressure"）

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

ユースケース独自のSearch Parameterが定義されていない場合、以下の表の内容が共通のSearch Parameterとなる。ただし、categoryパラメータおよびcodeパラメータについては、各ユースケース毎に異なる固定値および用語定義で定められたコード体系を指定することになるので注意が必要である。

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Observation?identifier=http://myhospital.com/fhir/observation-id-system|1234567890 |
| MAY | patient,category,code,value-quantity | reference,token,token,quantity | GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40 |
| MAY | patient,category,code,value-quantity,date | reference,token,token,quantity,date | GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40&date=le2020-12-31 |
| MAY | patient,category,code,value-quantity,encounter | reference,token,token,quantity,reference | GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40&encounter=456 |

#### 操作詳細

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるObservationの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Observation?identifier={token}

```

例：

```
GET [base]/Observation?identifier=http://myhospital.com/fhir/observation-id-system|1234567890

```

指定された識別子に一致するObservationリソースを含むBundleを検索する。

##### 推奨検索パラメータ

このプロファイルでは検索の多様性が求められるため、推奨（**SHOULD**）とする検索項目は定義していない。

##### オプション検索パラメータ

オプションとして次の検索パラメータをサポートすることができる。(MAY)

1.患者中心での検索：subject（= Patientリソース：対象患者）、category（対象カテゴリ）、code（対象項目）、value[x].valueQuantity（値条件）での検索をサポートすることが望ましい。（MAY）

検査結果値であるエレメント=value[x].valueQuantityの実際のSearch Parameterはvalue-quantityとなる。

patient,category,code,value-quantity の各検索パラメータに一致するObservationリソースを含むBundleを取得することができる。

```
   GET [base]/Observation?patient={reference}&category={token}&code={token}&value-quantity={quantity}

```

例：患者123の心拍数が40超えのバイタルサインを取得したい場合

```
   GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40

```

2.項目中心の検索：subject（= 複数のPatientリソース：母集団としての患者範囲）、category（対象カテゴリ）、code（対象項目）、value[x].valueQuantity（値条件）、effective[x].effectiveDateTime または .effectivePeriod（期間範囲）での検索をサポートすることが望ましい。（MAY）

検査結果値であるエレメント=value[x].valueQuantityの実際のSearch Parameterはvalue-quantityとなり、期間指定についてはエレメントがeffective[x].effectiveDateTime または .effectivePeriod いずれの場合においてもSearch Parameterはdateとなる。

patient,category,code,value-quantity,date の各検索パラメータに一致するObservationリソースを含むBundleを検索する。

```
   GET [base]/Observation?patient={reference}&category={token}&code={token}&value-quantity={quantity}&date={date}

```

例：患者123の心拍数が40超えかつ2020年12月31日以前のバイタルサインを取得したい場合

```
   GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40&date=le2020-12-31

```

3.訪問診療等の検索：subject（= 複数のPatientリソース：母集団としての患者範囲）、category（対象カテゴリ）、code（対象項目）、value[x].valueQuantity（値条件）、encounter（= Encounterリソース：対象医療行為）での検索をサポートすることが望ましい。（MAY）

patient,category,code,value-quantity,date,encounter の各検索パラメータに一致するObservationリソースを含むBundleを検索する。

```
   GET [base]/Observation?patient={reference}&category={token}&code={token}&value-quantity={quantity}&date={date}&encounter={reference}

```

例：患者123の心拍数が40超えかつ2020年12月31日以前で診療456の時のバイタルサインを取得したい場合

```
   GET [base]/Observation?patient=123&category=vital-signs&code=http://loinc.org|8867-4&value-quantity=gt40&date=le2020-12-31&encounter=456

```

#### Operation一覧

| | | |
| :--- | :--- | :--- |
| MAY | `$lastn` | `$lastn`オペレーションを使用すると、指定したある条件を満たす、最新のn件のObservationリソースを取得することができる。 |

##### オプションオペレーション

オプションとして次のオペレーションをサポートすることができる。(MAY)

1. Observation用`$lastn`オペレーション

`$lastn` オペレーションはある条件に基づく最新、または最新からn件の検査結果/測定結果等を取得するという一般的なニーズを満たすためのオペレーションである。例えば、直近の傾向を見るために、患者の過去5回分の体温を取得したり、最新の検査結果や媒体るサインを取得したりすることができる。 検索を行う際は、通常のObservationの検索パラメータと組み合わせて使用される。また、対象となる患者等を限定するための、patientまたはsubjectの検索パラメータ、およびカテゴリを指定するcategory検索パラメータは必須の検索パラメータとなる。

また取得される結果には以下のルールに従う。

* 追加パラメータによりフィルタされる
* 取得される結果はObservation.codeの値によるグルーピング処理(Group by)される
* 新しいデータから古いデータの順にソートされる
* グループごとにmaxパラメータに指定された数だけ応答が返る。maxが指定されない場合は、最新の結果のみが返される

この操作の公式なURLは以下である。
 https://hl7.org/fhir/R4/operation-observation-lastn.html

###### 入力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| max | 0..1 | positiveInt | max は、lastn クエリ操作のオプションの入力パラメータ。これは、各グループから返すObservationの最大数を指定するために使用される。例えば、「ある患者のすべてのバイタルサイン結果から最新の3件を取得する」というクエリの場合、max = 3となる。 |

###### 出力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| return | 1..1 | Bundle | バンドルのタイプは"searchset"である。この操作の結果は、リソースとして直接返される。 |

#### サンプル

リクエスト：ある患者のすべてのバイタルから最新の3件を取得する。

```
GET [base]/Observation/$lastn?max=3&patient=Patient/123&category=vital-signs

```

レスポンス：各サーバ毎に実装されたLast Nアルゴリズムに従い、患者のすべてのバイタルの中からコードごとに分類し、それぞれについて最新の3件を返す。以下の応答例では、9種のバイタルに対してそれぞれ3件ずつ応答を返しているため、合計27件のObservationのバンドルとなっている。

```

HTTP/1.1 200 OK
[other headers]

{
  "resourceType": "Bundle",
  "id": "26419249-18b3-45de-b10e-dca0b2e72b",
  "meta": {
    "lastUpdated": "2017-02-18T03:28:49Z"
  },
  "type": "searchset",
  "total": 27,
  // the patient temperature was being taken several times a day
  "entry": [{
    "fullUrl": "http://server/path/Observation/20170219-06temp",
    "resource": {
      "resourceType": "Observation",
      "id": "20170219temp",
      .. 中略 ...
  ,{
   "fullUrl": "http://server/path/Observation/20170219-05temp",
       "resource": {
         "resourceType": "Observation",
         "id": "20170218temp",
      .. 中略 ...
    }
      .. 中略 ...
  ]
}

```

## 補足説明

本セクションはObservationリソースを理解する上で重要となる[Observation基底仕様の「Note」セクション](https://www.hl7.org/fhir/R4/observation.html#notes)を抜粋＆翻訳し、転記したものである。なお、本セクションではobservationを"検査"と和訳している点に留意されたい（ただし、リソース名を明確に指す場合のみObservationと表記している）。

### 検査のプロファイリング

最も単純な場合、リソースインスタンスはコード、値、および状態フラグだけで構成できる。他のプロパティの関連性は、検査の種類によって異なる。プロファイルは、与えられた事例に対する特定の種類の検査を記録する際の指針を提供するために作成される。Observationリソースは、大多数のシステムで記録された詳細さの度合いに焦点を当てている。ただし、特定の事例では、特定の状況に関連する追加の制約と追加の情​​報がある場合がある。こうした複雑さを追加で取り込めるように、他のリソースと同様、拡張機能が利用できる。

### 検査の対象

通常、対象（患者もしくは患者グループ、場所、もしくは機器）に対して検査が行われ、その検査のために直接計測されたものと対象との間の区別は、検査コード（例えば、血糖）によって特定され、別々に表現する必要はない。ただし、対象そのものでない場合、検査の焦点を表現するために3つの属性を使用できる。specimen（検体）およびbodySite（検査対応部位）の要素は、対象のサンプルもしくは解剖学的・形態学的な位置の測定値の表現に利用され、患者に埋め込まれた機器や別の検査などの注意点に相当するような対象の特定の観点に焦点を当てて表現している。

### 検査のグループ分け

多くの検査は、他の検査と重要な関係性を持っているため、グループ化する必要がある。

* 例えば、構造は以下のように定義される：
 検査レポートとDiagnosticReport.result（検査レポート結果）
* 検査の要素については以下のように定義される：
 Observation.component（検査コンポーネント）、 Observation.hasMember（検査保持メンバ）、Observation.derivedFrom（検査派生元）

以下の節では、使用される構造に関しての指針について述べる。何をグループ化するのかという考え方は、しばしば文脈に高く依存しており、エンドユーザの視点にも基づくため、使用する構造の選択は、権限や組織的な訓練、文脈などによって決めるべきである。通常、プロファイリングは実装に必要になるだろう。

#### DiagnosticReport.result（検査レポート結果）

検査レポートはオーダ（サービス要求）に直接関連している。DiagnosticReport.code（検査レポートコード）はパネルに名前を付け、グループ化要素として機能する。従来、これは臨床検査において"パネル"や"バッテリー"と呼ばれていたものである。DiagnosticReport.result（検査レポート結果）の要素は、個々の検査を参照する。いくつかの例では、検査レポートを使った検査のグループ化をグループ化の構造として示している。

#### Observation.component（検査コンポーネント）

Observation.component（検査コンポーネント）は、構成するObservationリソースの範囲を超えて、合理的には解釈できないような結果をサポートするために使われる。検査コンポーネントは、個別かつ分けられた検査の一部分から構成されるか、Observation.codeに対して適切な情報を提供する。また、Observation.codeに関して唯一、解釈を与えるものとなる（例えば、`$stats`操作を参照）。従って、正しく検査の意味を理解するためには、**すべて**の code-value（コード・値） と component.code-component.value（要素コード・要素値） のペアを考慮する必要がある。コンポーネントは、一つの手法、一つの検査、一人の検査実施者、一つの装置、および1回しかない場合のみ使用するべきである。この構造を使用するユースケースには次のようなものがある。：

* 1.一般的に生成され、一緒に解釈される検査、たとえば収縮期および拡張期の血圧は単一の血圧パネルとして表現
* 2.一般的に一緒に生成および解釈される評価ツールの結果、たとえば5つの要素を持つ単一の検査である新生児のアプガー指数
* 3.質問に対する複数の回答の表現（検査と質問/回答の関係と境界）、たとえば患者が飲んだアルコールの種類の報告

一方で、別の検査の構成要素であるという文脈から外れた臨床的に関連する検査は、個別のObservationリソースで表されるべきである。例えば、ボディマス指数（BMI）検査は、身長と体重は臨床的に関連した検査であるから、これらを要素に含むべきではない。個別のObservationリソースとして表現するべきである。どのように独立した検査を関連付けるか、後述するセクションを参照のこと。

#### Observation.hasMember（検査保持メンバ） および Observation.derivedFrom（検査派生元）

Observation.hasMember（検査保持メンバ）と Observation.derivedFrom（検査派生元）、および中核となる拡張機能であるObservation-sequelTo（検査・続編） と Observation-replaces（検査・置換）は、手法、検査、実施者、機器、時間、エラー状態に対して1つ以上の異なる値を持った結果や、それ自体の使用や解釈した結果をサポートするために利用される。この構造を用いる2つの共通事例は以下の通り:

* 1."パネル"や"バッテリー"などに対する検査に関連したグループ分けについて。この事例では、Observation.code（検査コード）は、"パネル"コードを表す。典型的には、Observation.value[x]（検査値）は存在せず、検査メンバのセットがObservation.hasMember（検査保持メンバ）に一覧される。この構造は、検査レポート（例えば、複雑なマイクロ分離と感受性検査報告）と共に利用される場合には、入れ子になったグループ分けを許可する
* 2.ある検査が派生して他の検査と関連付ける場合、Observation.code（検査コード） と Observation.value[x]（検査値）の両方とも存在し、関連付けられた検査はObservation.derivedFrom（検査派生元）に一覧される。この一例として、身長と体重の計測値が参照されるボディマス指数（BMI）検査がある

### 検査におけるコード利用

結果の値をコードを用いて事前定義された概念で表現するとき、valueCodeableConceptが使われる。この要素は、LOINCなどの標準的な命名法または元システム（"ローカル"）でコード化された結果値で構成される値セットにバインドされる。

#### 多重コーディング

結果は、異なるコードシステムに基づいて複数の値セットでコーディングでき、概念マップリソースを使用してマッピングしたり、下の例に示すように要素に直接追加のコーディングとして指定したりできる。 例えば、検体検査プロファイルでは、"尿酸"に関するローカルコードと標準コードの両方を同時に関連付けることが可能であり、valueCodeableConcept は以下のように表現される：

```
 "valueCodeableConcept": {
  "coding": [
   {
    "system": "http://abc-hospital.local/fhir/Observation/localcode",
    "code": "05104",
    "display": "尿酸"
   }, {
    "system": "http://jpfhir.jp/Common/ValueSet/labResult-code",
    "code": "3C020000002327101",
    "display": "尿酸(UA)"
   }
  ],
  "text": "尿酸"
 }

```

#### コーディング結果のためのテキスト値:

データ要素が通常通りコード化される時や、code（コード）要素と関連付けられた型がコードの値を定義する際、適切なコードがなく、フリーテキストのみが利用できる場合であってもvalueCodeableConceptを使用する。例えば、テキストだけ使うと、valueCodeableConcept 要素は以下のようになる：

```
 "valueCodeableConcept": {
  "text": "コード化不可のフリーテキスト結果"
 }

```

コード化された回答リストに"その他"の概念コードが含まれ、概念のフリーテキスト記述がある場合、情報源の完全な意味を取り込むため valueCodeableConcept.text要素を使用するべきである。以下の例では、回答コード"その他"は、valueCodeableConcept要素の中で提供され、valueCodeableConcept.text要素の中で提供される値がテキスト値となる。

```
{
 "resourceType": "Observation",
 ... 中略 ...
 "code": {
  "coding": [
   {
    "system": "http://loinc.org",
    "code": "74076-1",
    "display": "関与する薬物または物質"
   }
  ]
 },
 ... 中略 ...
 "valueCodeableConcept": {
  "coding": [
   {
    "system": "http://loinc.org",
    "code": " LA20343-2",
    "display": "その他の物質: 特定が必要"
   }
  ],
  "text": "その他: ソファの下で見つけた青い錠剤"
 }
 ... 中略 ...
}

```

#### FHIRにおけるコード値の組み合わせを用いた相互運用性の課題

多くの検査イベントに対して（特定パターンかどうかに関わらず）繰り返し発生する課題は、Observation.code（検査コード）とObservation.value（検査値）を追加する方法を決める時に起こる。このことは臨床検査においてはごく簡単なことだが、所見や疾患、家族歴などのその他の種類の検査にて曖昧性を生じる。この議論は、そのようなステートメントのコード化された表現が Observation.code（検査コード）および Observation.value（検査値）の要素を使用して表現される方法に焦点を当てている。

FHIRの検査には、中心となる2つの異なる側面がある：

* プロパティが検査された所見 および/または プロパティを作成するために実行されたアクション。例：血中ヘモグロビンの測定
* 検査の結果。例：14 g/dl

Observation.codeとObservation.valueの異なる組み合わせを使用して、同じ情報を表すいくつかの異なる方法が存在する。代替手段の制約のない使用は、意味的等価性の計算と、さまざまなアプリケーションおよびユーザーからの検査に対する安全な解釈が大きな課題である。次の5つのパターンは、同じケースを合理的に表すことができる。 Observationリソースは多くのユースケースをサポートする必要があることを考慮すると、特定のパターンを定義する適切な場所は、FHIRを実装する権限 および/または 組織によって指定されたプロファイルおよび実装ガイドを通じて行われることが期待される。:

* ケース1. Observation.code は、検査の性質を表現しており、Observation.value は数値以外の結果値を表している。これらは、FHIR検査の中心となる2つの異なる側面となっている。
 例: 
* code=[検査]
* value=[腹部圧痛]
 
* ケース2. Observation.code は上記1.とほぼ同じだが、粒度のレベルは値からコードに移行される。 
 例: 
* code=[腹部検査]
* value=[圧痛]
 
* ケース3. Observation.code は、検査アクションを指定しない方法でも表現されるが、上記の項目のように、単一の名前（または用語）にまとめられた検出結果に関するステートメントを示す。 この例では、Observation.value が存在し、通常それを確認または否決する結果を「修飾」する。
 例: 
* code=[腹部圧痛]
* value=[確認/陽性]
 
* ケース4. この例では Observation.code は、検査アクションを指定しない方法で表現されているが、単一の名前（または用語）にまとめられた検出結果に関するステートメントを示している。 この文脈における特定の例では、Observation.valueは省略されている。
 例： 
* code=[腹部圧痛]
* value要素は省略
 
* ケース5.この例では、Observation.code にて、まず所見の有無（http://terminology.hl7.org/CodeSystem/v2-0532#Y）を指定し、Observation.bodySite.text に当該所見の部位（例えば、下腹部）を指定する。"圧痛"といった詳細な所見は Observation.component.code や Observation.component.valueString に記載する。**日本仕様においては本ケースによる記述方法を想定する。** 
* code=[Yes]
* bodySite.text=[下腹部]
* component.valueString = [圧痛あり]
 

### 追加コードや複数の検査による Observation 解釈の精緻化

次のリストは、コードの使用または他の複数の検査によって、検査の解釈が変更される可能性がある追加文脈を付与するためのガイドである。:

* 1.可能であれば最も専用のコードを使用する。
 例：

```
{
"resourceType": "Observation",
... 中略 ...
"code": {
 "coding": [
  {
   "system": "http://loinc.org",
   "code": "6689-4",
   "display": "血糖値[質量/体積]--食後2時間値"
  }
 ]
},
... 中略 ...
}

```

* 2.または上記のようにObservation.code で追加のコードを使用する。
 例: Observation.code = **coding-1: 59408-5 パルスオキシメータによる動脈血酸素飽和度, coding-2: 20564-1 血中酸素飽和度**

```
{
"resourceType": "Observation",
... 中略 ...
"code": {
 "coding": [
  {
   "system": "http://loinc.org",
   "code": "59408-5",
   "display": "パルスオキシメータによる動脈血酸素飽和度"
  },
  {
   "system": "http://loinc.org",
   "code": "20564-1",
   "display": "血中酸素飽和度"
  }
 ]
},
... 中略 ...
}

```

* 3.上記のようにグループ化された複数の検査は検査を正しく理解・解釈するために必要な追加情報を与える、検査をグループ化する代わりに拡張機能を使用することで検査の理解・解釈に必要な他の検査の参照先にできる

（備考：既存の Observation Extensionsを評価するため、実装者コミュニティからの意見を募集中。フィードバックは[こちら](https://chat.fhir.org/#narrow/stream/103-Orders-and.20Observation.20WG)。）

### 値とデータ型

Observation.value[x]要素には、次のように型に応じた変数名がある。

* valueQuantity（量）
* valueCodeableConcept（コーダブルコンセプト値）
* valueString（文字列）
* valueBoolean（論理値）
* valueInteger（整数値）
* valueRange（範囲）
* valueRatio（比率）
* valueSampledData（サンプルデータ値）
* valueTime（時刻）
* valueDateTime（日時）
* valuePeriod（期間）

詳細は[結果値のコードの使い方](https://www.hl7.org/fhir/R4/observation.html#usingcodes)を参照のこと。

ほとんどの検査結果値は「不明」などの例外のために完全な論理値にならないため、論理型はめったに使用されない。 従って、代わりにデータ型CodeableConceptを使用し、[バリューセット](http://terminology.hl7.org/ValueSet/v2-0136)からコードを選択する必要がある（これら「はい/いいえ」の概念は、表示名「true / false」または必要に応じて他の相互に排他的な用語にマッピング可能）。

データ型SampledDataには、特別な値「E」（エラー）、「L」（検出限界未満）、「U」（検出限界超え）が使用できる。 しかし、検出限界値超えもしくは未満の範囲の検査でデータ型valueQuantityを使用する場合は、比較基準と共に限界値を指定してvalueQuantityを使用する必要がある。 さらにエラーが発生した場合、dataAbsentReason要素に適切な値（「エラー」または「NaN」）を使用する必要がある。 たとえば、値が "2.0 mmol/L 未満" の検出下限を下回った場合、valueQuantityは次のようになる:

```
 "valueQuantity": {
  "value": 2.0,
  "comparator": "<",
  "unit": "mmol/l",
  "system": "http://unitsofmeasure.org",
  "code": "mmol/L"
 }

```

もし値が「NaN」（エラー）の場合、valueCodeableConcept要素は存在せず。dataAbsentReason要素は次のようになる。

```
 "dataAbsentReason": {
  "coding": [
   {
    "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason",
    "code": "NaN",
    "display": "数値化不能"
   }
  ]
 }

```

値要素には複数の型が許可されているため、複数の値検索パラメータが定義されている。ただし、Ratio型の値を検索するための標準パラメータはない。

### 検査における生理学的に重要な時間

effectiveDateTimeとeffectivePeriodは、検査に密接に関連する時間情報である。 生物学的対象（例：人間の患者）の場合、生理学的に検査に関連する時間である。検体の検査の場合、検体収集の開始と終了を表す（24時間尿中ナトリウム等）が、収集時間が十分に短い場合は１点の時刻を指す（例：通常の静脈穿刺）。対象者から直接得た検査の場合（例：血圧、胸部X線）、こちらも多くの場合、検査プロセスの開始時間と終了時間のうち１点の時刻を指す。

### 参照範囲

最も一般的な検査には普遍的な参照範囲が1個だけ含まれる。参照範囲は、臨床検査や他の収縮期血圧のような検査には有用かもしれないが、「妊娠」のようなものにはほとんど関係ない。システムは患者に関する知識（例：患者固有の年齢・性別・体重・その他要因）に基づいて関連する参照範囲のみに制限できる（MAY）が、それは不可能か不適切な場合がある。複数の参照範囲があるときは常に、参照範囲 および/または 年齢属性で違いが分かるようにしなければならない（**SHOULD**）。

### キャンセルまたは中止された検査

検査や検査を完了できなかった場合（例えば検体が不十分とか、医療者がオーダをキャンセルしたとか）、ステータスをキャンセルに更新し、具体的な詳細を、できればコード化された値としてdataAbsentReasonかvalueCodeableConcept要素に設定する。note要素にも同様に追加情報が付与される場合がある。[検体拒否の例](https://www.hl7.org/fhir/R4/observation-example-unsat.html)は、"不十分な検体"という意味のコード値をdataAbsentReasonへ設定している。

### 遺伝情報についての検査

遺伝情報の報告には、DiagnosticReportリソースとObservationリソースを主に使用する。遺伝情報に関する結果の記述についての実装ガイドは[こちら](https://hl7.org/fhir/uv/genomics-reporting/)を参照されたい。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-common",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_Common",
  "title" : "JP Core Observation Common Profile",
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
  "description" : "このプロファイルはObservationリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "測定や簡単な観察事実（assertion）",
        "definition" : "患者、デバイス、またはその他の対象について行われた測定と簡単な観察事実（assertion）。",
        "comment" : "すべてのObservation（検査測定や観察事実）の共通部分のプロファイル"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "このObservationリソースの一意な識別ID",
        "definition" : "このObservationリソースの一意な識別ID"
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "short" : "このObservationが実施されることになった依頼や計画、提案に関する情報",
        "definition" : "このObservationが実施されることになった依頼や計画、提案に関する情報",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection",
              "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
            ]
          }
        ]
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "short" : "このObservationが親イベントの一部を成す要素であるとき、その親イベントに関する情報",
        "definition" : "このObservationが親イベントの一部を成す要素であるとき、その親イベントに関する情報",
        "comment" : "ObservationをEncounterにencounter要素を使ってリンクする。もうひとつ別のObservationを参照することについては、以降にあるt [Notes](observation.html#obsgrouping)　をガイダンスとして参照のこと。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispenseBase",
              "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization",
              "http://hl7.org/fhir/StructureDefinition/ImagingStudy"
            ]
          }
        ]
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "結果の状態",
        "definition" : "結果の状態",
        "comment" : "このリソースは現在有効でないというマークをするコードを含んでいるため、この要素はモディファイアー（修飾的要素）として位置づけられている。"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "short" : "このObservationを分類するコード",
        "definition" : "このObservationを分類するコード",
        "comment" : "階層的にカテゴリーを設定することで粒度のレベルを概念定義できる。",
        "min" : 1
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first",
        "short" : "検査の第1カテゴリはJP_SimpleObservationCategory_VSから値を指定する。",
        "min" : 1,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_SimpleObservationCategory_VS"
        }
      },
      {
        "id" : "Observation.category:first.coding.system",
        "path" : "Observation.category.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "このObservationの対象を特定するコード",
        "definition" : "このObservationの対象を特定するコード",
        "comment" : "observationの意味を正しく理解するには、すべてのcode-valueペアと、さらに存在する場合にはcomponent.code-component.valueのペアが、考慮される必要がある。"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "このObservationの対象となる患者や患者群、機器、場所に関する情報",
        "definition" : "このObservationの対象となる患者や患者群、機器、場所に関する情報",
        "comment" : "この要素は1..1のcardinalityになるはずと考えられる。この要素が欠損値になる唯一の状況は、対象患者が不明なデバイスによって観察が行われるケースである。この場合、観察は何らかのコンテキスト/チャネルマッチング技術を介して患者にマッチングされる必要があり、患者にマッチングされれば、その時点で本要素を更新する必要がある。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Group",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"
            ]
          }
        ]
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "short" : "配偶者、親、胎児、ドナーなど、このObservationのsubject要素が実際の対象でない場合、その実際の対象に関する情報",
        "definition" : "配偶者、親、胎児、ドナーなど、このObservationのsubject要素が実際の対象でない場合、その実際の対象に関する情報",
        "comment" : "T通常、observationは対象（患者、または患者のグループ、場所、またはデバイス）について行われ、対象とobservationのために直接測定されるものとの区別は、observationコード自体（例：「血糖値」 ）で記述され、この要素を使用して個別に表す必要はない。検体（標本）への参照が必要な場合は、 `specimen`要素を使用する。リソースの代わりにコードが必要な場合は、人体部位には`bodysite`要素を使用するか、標準の拡張機能[focusCode]（extension-observation-focuscode.html）を使用する。"
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "診察や入院など、このObservationが実施されるきっかけとなった診療イベントに関する情報",
        "definition" : "診察や入院など、このObservationが実施されるきっかけとなった診療イベントに関する情報",
        "comment" : "通常、イベントが発生したEncounterであるが、一部のイベントは、Encounterの正式な完了の前または後に開始される場合があり、その場合でもEncounterのコンテキストに関連付けられている（例：入院前の臨床検査）。",
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
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "取得された結果が臨床的に確定された日時または期間",
        "definition" : "取得された結果が臨床的に確定された日時または期間",
        "comment" : "この観察結果が過去の報告でない限り、少なくとも日付が存在する必要がある。不正確または「あいまいな」時間を記録するには（たとえば、「朝食後」に行われた血糖測定）、[Timing]（datatypes.html＃timing）データ型を使用して、測定を通常のライフイベントに関連付けることができる。"
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "このバージョンのObservationが医療者に提供された日時。通常、結果を確認し検証後に提供される日時",
        "definition" : "このバージョンのObservationが医療者に提供された日時。通常、結果を確認し検証後に提供される日時",
        "comment" : "レビューと検証を必要としないobservationの場合、リソース自体の[`lastUpdated`]（resource-definitions.html＃Meta.lastUpdated）日時と同じになる場合がある。特定の更新のレビューと検証が必要なobservationの場合、新しいバージョンを再度レビューして検証する必要がないような臨床的に重要でない更新がなされたために、リソース自体の「lastUpdated」時間はこれと異なる場合がある。"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "このObservationの責任者/実施者に関する情報",
        "definition" : "このObservationの責任者/実施者に関する情報",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "取得された結果",
        "definition" : "取得された結果"
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "short" : "このObservationのvalue[x]要素に期待される結果が存在しなかった場合、その理由",
        "definition" : "このObservationのvalue[x]要素に期待される結果が存在しなかった場合、その理由",
        "comment" : "ヌル値または例外値は、FHIRオブザベーションで2つの方法で表すことができる。 1つの方法は、それらを値セットに含めて、値の例外を表す方法である。たとえば、血清学的検査の測定値は、「検出された」、「検出されなかった」、「決定的でない」、または「検体が不十分」である可能性がある。別の方法は、実際の観測にvalue要素を使用し、明示的なdataAbsentReason要素を使用して例外的な値を記録することである。たとえば、測定が完了しなかった場合、dataAbsentReasonコード「error」を使用できる。この場合には、観測値は、報告する値がある場合にのみ報告される可能性があることに注意する必要がある。たとえば、差分セルカウント値は> 0の場合にのみ報告される場合がある。これらのオプションのため、nullまたは例外値の一般的な観測値を解釈するにはユースケースの合意が必要である。"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "高、低、正常等の結果のカテゴリ分けした評価",
        "definition" : "高、低、正常等の結果のカテゴリ分けした評価",
        "comment" : "「異常フラグ」として呼ばれる検査結果解釈コードが従来から使用されており、その使用はコード化された解釈が関連するような他の場合でも拡大して使われている。多くの場合、1つ以上の単純でコンパクトなコードとして報告され、この要素は、結果の意味や正常かどうかを示すために、レポートや時系列表で結果値の隣に配置されることがよくある。",
        "requirements" : "一部の結果、特に数値結果については、結果の意義を完全に理解するためには解釈コードが必要である。"
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "short" : "このObservationに関するコメント",
        "definition" : "このObservationに関するコメント",
        "comment" : "観察（結果）に関する一般的な記述、重要な、予期しない、または信頼できない結果値に関する記述、またはその解釈に関連する場合はそのソースに関する情報が含まれる場合がある。",
        "requirements" : "Need to be able to provide free text additional information.  \nフリーテキストの追加情報を提供できる必要がある。"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "対象となった身体部位",
        "definition" : "対象となった身体部位"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "このObservationの実施方法",
        "definition" : "このObservationの実施方法"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "このObservationに使われた検体/標本に関する情報",
        "definition" : "このObservationに使われた検体/標本に関する情報",
        "comment" : "`Observation.code`にあるコードで暗黙的に示されない場合にのみ使用する必要がある。検体自体の観察は行われない。観察（観測、検査）対象者に対して実施されるが、多くの場合には対象者から得られた検体に対して実施される。検体が奥の場合に関わるが、それらは常に追跡され、明示的に報告されるとは限らないことに注意すること。またobservationリソースは、検体を明示的に記述するような状況下（診断レポートなど）で使用される場合があることに注意。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common"
            ]
          }
        ]
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "このObservationでデータを得るために使われた測定機器に関する情報",
        "definition" : "このObservationでデータを得るために使われた測定機器に関する情報",
        "comment" : "これは、結果の送信に関与するデバイス（ゲートウェイなど）を表すことを意図したものではない。そのようなデバイスは、必要に応じてProvenanceリソースを使用して文書化する。"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "基準範囲との比較による結果の解釈方法のガイダンス",
        "definition" : "基準範囲との比較による結果の解釈方法のガイダンス",
        "comment" : "通常の範囲または推奨範囲と比較して値を解釈する方法に関するガイダンス。複数の参照範囲は「OR」として解釈される。つまり、2つの異なるターゲット母集団を表すために、2つの `referenceRange`要素が使用される。",
        "requirements" : "どの値が「正常」と見なされるかを知ることは、特定の結果の意義を評価するのに役立つ。さまざまなコンテキストに対応するため複数の参照範囲を提供できる必要がある。"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "short" : "このObservationに関連する子リソースに関する情報。このObservationに関連する/属するパネル検査や検査セットなどのObservationグループ",
        "definition" : "このObservationに関連する子リソースに関する情報。このObservationに関連する/属するパネル検査や検査セットなどのObservationグループ",
        "comment" : "この要素を使用する場合、observationには通常、値または関連するリソースのセットのいずれかを含む。その両方を含む場合もある。複数のobservationをグループに一緒にまとめる方法については、以下の[メモ]（observation.html＃obsgrouping）を参照せよ。システムは、[QuestionnaireResponse]（questionnaireresponse.html）からの結果を計算して最終スコアにし、そのスコアをobservationとして表す場合があることに注意。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "このObservationの結果の導出元に関する情報。例えば、画像検査から取得された結果となる場合その導出元となる画像検査結果を示すImagingStudyリソース",
        "definition" : "このObservationの結果の導出元に関する情報。例えば、画像検査から取得された結果となる場合その導出元となる画像検査結果を示すImagingStudyリソース",
        "comment" : "この要素にリストされているすべての参照の選択肢は、派生値の元のデータなる可能性のある臨床観察やその他の測定値を表すことができる。最も一般的な参照先は、別のobservationである。observationをグループに一緒にまとめる方法については、以下の[メモ]（observation.html＃obsgrouping）を参照すること。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/DocumentReference",
              "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
              "http://hl7.org/fhir/StructureDefinition/Media",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "複合的な結果。例えば、血圧測定値ではそれを構成する収縮期および拡張期の値の組み合わせ",
        "definition" : "複合的な結果。例えば、血圧測定値ではそれを構成する収縮期および拡張期の値の組み合わせ",
        "comment" : "複数のObservation をグループに一緒にまとめる方法については、以下の[Notes]（observation.html＃notes）を参照すること。",
        "requirements" : "コンポーネントobservation は プライマリobservation としてのobservation リソースの中で同じ属性を共有し、常に単一のobservation の一部として扱われる（つまりそれらは分離可能ではないん）。ただし、プライマリobservationのreference rangeはコンポーネント値に継承されないため、reference rangeは各コンポーネントobservation に適切であれば必要である。"
      }
    ]
  }
}

```
