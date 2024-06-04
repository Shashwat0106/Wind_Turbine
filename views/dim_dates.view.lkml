view: dim_dates {
  sql_table_name: "public"."DimDates" ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."date" ;;
  }
  dimension: date_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."dateKey" ;;
  }
  dimension: day {
    type: string
    sql: ${TABLE}."day" ;;
  }
  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }
  dimension: quarter {
    type: string
    sql: ${TABLE}."quarter" ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }
  measure: count {
    type: count
  }
}
