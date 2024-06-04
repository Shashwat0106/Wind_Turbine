view: dim_times {
  sql_table_name: "public"."DimTimes" ;;

  dimension: hour {
    type: string
    sql: ${TABLE}."hour" ;;
  }
  dimension: minute {
    type: string
    sql: ${TABLE}."minute" ;;
  }
  dimension: second {
    type: string
    sql: ${TABLE}."second" ;;
  }
  dimension_group: time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."time" ;;
  }
  dimension: time_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."timeKey" ;;
  }
  measure: count {
    type: count
  }
}
