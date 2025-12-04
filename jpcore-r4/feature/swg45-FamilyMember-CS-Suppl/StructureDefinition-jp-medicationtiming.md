# JP Core Medication Timing DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Timing DataType**

## Data Type Profile: JP Core Medication Timing DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationTiming
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationTiming
* **項目**: *Title*
  * **内容**: JP Core Medication Timing DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはTiming DataTypeに対して、薬剤に関するタイミング定義を行なったものである 

**Usages:**

* Use this DataType Profile: [JP Core MedicationDosage Base DataType](StructureDefinition-jp-medicationdosagebase.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationtiming)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationtiming.csv), [Excel](StructureDefinition-jp-medicationtiming.xlsx), [Schematron](StructureDefinition-jp-medicationtiming.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationtiming",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationTiming",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationTiming",
  "title" : "JP Core Medication Timing DataType",
  "status" : "active",
  "date" : "2023-10-31",
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
  "description" : "このデータタイプはTiming DataTypeに対して、薬剤に関するタイミング定義を行なったものである",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Timing",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Timing",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Timing",
        "path" : "Timing",
        "short" : "投与日時",
        "definition" : "投与日時"
      },
      {
        "id" : "Timing.event",
        "path" : "Timing.event",
        "short" : "服用もしくは注射を行なうタイミングを示す時刻",
        "definition" : "服用タイミングを具体的な日時で指定する場合に使用する"
      },
      {
        "id" : "Timing.repeat",
        "path" : "Timing.repeat",
        "short" : "イベントが発生する時刻",
        "definition" : "イベントがスケジュールされたルールについての記述。",
        "requirements" : "スケジュールされたタイミングの多くは規則的な繰り返しで決定されている。"
      },
      {
        "id" : "Timing.repeat.bounds[x]",
        "path" : "Timing.repeat.bounds[x]",
        "short" : "服用・注射開始日から服用・注射終了日までの全日数",
        "definition" : "服用・注射開始日から服用・注射終了日までの全日数。実投与日数ではないことに注意する。"
      },
      {
        "id" : "Timing.repeat.count",
        "path" : "Timing.repeat.count",
        "short" : "繰り返し服用もしくは注射回数",
        "definition" : "Timing仕様の全てにおいて、特定の期間に繰り返されるように指定された総回数。もし、countMaxが設定されていれば、このエレメントは許容される最低限度の回数を示す。",
        "comment" : "回数に上限、下限の範囲がある場合は、このcountで示される回数が起きるまでは、エレメントは範囲の中にあると解釈されるべきである。"
      },
      {
        "id" : "Timing.repeat.countMax",
        "path" : "Timing.repeat.countMax",
        "short" : "繰り返しの最大回数",
        "definition" : "このエレメントが設定されている場合は、回数に範囲があることを示している。したがって、[count]から[countmax]までの回数で繰り返される。",
        "comment" : "32bit整数。もし、値がこれを超える場合はdecimalで記録される。"
      },
      {
        "id" : "Timing.repeat.duration",
        "path" : "Timing.repeat.duration",
        "short" : "継続時間",
        "definition" : "投与されるタイミングが発生している時間。もし、durationMaxが設定されていれば、このエレメントは許容される継続時間の下限を示す。",
        "comment" : "継続時間はイベントの定義の一部（たとえば、静脈注射(IV)では特定の量と速度が明示される)として示されることがある。その他、Timing仕様の一部（たとえば、運動）として示されることもある。",
        "requirements" : "アクティビティによっては即時的なものではなく、その期間において維持される必要がある。"
      },
      {
        "id" : "Timing.repeat.durationMax",
        "path" : "Timing.repeat.durationMax",
        "short" : "継続時間(最大値)",
        "definition" : "もし、このエレメントに値が設定されていれば、durationには範囲があることを示している。したがって、[duration]から[durationMax]までの継続時間の範囲で投与される。",
        "comment" : "継続時間はイベントの定義の一部（たとえば、静脈注射(IV)では特定の量と速度が明示される)として示されることがある。その他、Timing仕様の一部（たとえば、運動）として示されることもある。",
        "requirements" : "アクティビティによっては即時的なものではなく、その期間において維持される必要がある。"
      },
      {
        "id" : "Timing.repeat.durationUnit",
        "path" : "Timing.repeat.durationUnit",
        "definition" : "UCUM単位で表される継続時間についての単位。",
        "comment" : "FHIRの文字列は1MB以上の大きさとなってなはらない(SHALL NOT)。"
      },
      {
        "id" : "Timing.repeat.frequency",
        "path" : "Timing.repeat.frequency",
        "short" : "期間内にイベントが発生する回数、頻度",
        "definition" : "特定の期間に繰り返して発生した行為の回数。もし、frequencyMaxが設定されていれば、このエレメントはfrequencyとして認められた下限を示す。",
        "comment" : "32ビットの数値。もし、値がそれを上回るようであればdecimalを使用する。"
      },
      {
        "id" : "Timing.repeat.frequencyMax",
        "path" : "Timing.repeat.frequencyMax",
        "short" : "期間内にイベントが発生する最大回数、最大頻度",
        "definition" : "このエレメントに値が設定されていれば、frequencyには範囲が指定されている。つまり、期間あるいは期間の範囲内に[frequency]から[frequencyMax]回繰り返されることを示している。",
        "comment" : "32ビットの数値。もし、値がそれを上回るようであればdecimalを使用する。"
      },
      {
        "id" : "Timing.repeat.period",
        "path" : "Timing.repeat.period",
        "short" : "イベントが発生する頻度に対応する期間",
        "definition" : "繰り返し投与が行われる期間を示す。たとえば、「1日3回」であれば、3は繰り返しの頻度(frequency)であり、「1日」が期間(period)である。もし、periodMaxに値が設定されていれば、このエレメントは期間として認められた範囲の下限を示す。",
        "comment" : "IEEEの浮動小数点型を使わずに、小数点も含むdecimal型のようなものを利用すること（たとえばJavaのBigInteger)。"
      },
      {
        "id" : "Timing.repeat.periodMax",
        "path" : "Timing.repeat.periodMax",
        "short" : "期間の上限（3-4時間）",
        "definition" : "もし、この値が設定されていれば、期間は[period]から[periodMax]までであることを示し、「3-5日に1回投与」のような表現が認められる。",
        "comment" : "IEEEの浮動小数点型を使わずに、小数点の制度も示すdecimal型のようなものを利用すること（たとえばJavaのBigInteger)。"
      },
      {
        "id" : "Timing.repeat.periodUnit",
        "path" : "Timing.repeat.periodUnit",
        "definition" : "期間を表すUCUM単位。",
        "comment" : "FHIRの文字列は1MB以上の大きさとなってなはらない(SHALL NOT)。"
      },
      {
        "id" : "Timing.repeat.dayOfWeek",
        "path" : "Timing.repeat.dayOfWeek",
        "definition" : "期間として1週間以上が指定されていれば、指定された曜日のみで投与が行われる。",
        "comment" : "曜日が指定されていなければ、他に指定された日には毎日投与されると想定される。frequencyとperiodエレメントはdayOfWeekと同じように使うことはできない。"
      },
      {
        "id" : "Timing.repeat.timeOfDay",
        "path" : "Timing.repeat.timeOfDay",
        "short" : "一日の間で投与される時刻",
        "definition" : "一日の間で指定された投与される時刻。",
        "comment" : "もし、このtimeOfDayに値が指定されていれば、毎日（daysOfWeekでフィルタされた曜日の）指定された時刻に投与されると推定される。whenやfrequency, periodエレメントはtimeOfDayとは同様に使うことはできない。"
      },
      {
        "id" : "Timing.repeat.when",
        "path" : "Timing.repeat.when",
        "short" : "投薬期間についてのコード",
        "definition" : "一日の間のおおよその時間帯で投与すべきタイミングを示す。日常のイベントに関連付けられていることもある。",
        "comment" : "一つ以上のイベントが記載されている場合、そのイベントは特定のイベントの組み合わせと結びついている。",
        "requirements" : "タイミングはしばしば起床や食事、睡眠などのできごとによってしばしば決定されている。"
      },
      {
        "id" : "Timing.repeat.offset",
        "path" : "Timing.repeat.offset",
        "short" : "イベントからの時間(分、前後）",
        "definition" : "イベントからの時間(分)。もし、分で示される時間がイベントのコードが前か後かを示していない場合、offsetはイベントの後であることが想定される。",
        "comment" : "32ビットの数値。もし、値がそれを上回るようであればdecimalを使用する。"
      },
      {
        "id" : "Timing.code",
        "path" : "Timing.code",
        "definition" : "スケジュール上のタイミングを表すコード（あるいはcode.text内のテキスト）。BID(1日2回)のようなコードはどこにでもあるが、多くの医療機関は付加的なコードを定義している。もし、コードが示されていれば、構造化されたタイミングで完全に示されたデータであると解釈され、コードまたはTimingを解釈するためのデータであると解釈される。しかし、例外的に.repeat.bounds（コードは含まれない)はコードを上書きして適用される。",
        "comment" : "BIDなどは「施設特有の時間」として定義される。たとえば、施設がBIDを「つねに朝7時と夕方6時」であると指定することがある。この指定が不適切であれば、BIDというコードは使うべきではない。その代わり、HL7が定義したBIDのコードではなく、その施設特有のコードで明示的に示すべきであり、構造化された表現を使うべきである（この場合、2回のイベントの時刻を指定する必要がある）。"
      }
    ]
  }
}

```
