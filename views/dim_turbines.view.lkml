view: dim_turbines {
  sql_table_name: public.DimTurbines ;;

  dimension: capacity {
    type: number
    sql: ${TABLE}."capacity" ;;
  }
  dimension_group: installation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."installationDate" ;;
  }
  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }
  dimension: turbine_id {
    type: number
    sql: ${TABLE}."turbineId" ;;
  }
  dimension: turbine_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."turbineKey" ;;
  }
  dimension: turbine_model {
    type: string
    sql: ${TABLE}."turbineModel" ;;
  }
  measure: count {
    type: count
  }
}
