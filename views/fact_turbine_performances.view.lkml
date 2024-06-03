view: fact_turbine_performances {
  sql_table_name: public.FactTurbinePerformances ;;

  dimension: acoustic {
    type: number
    sql: ${TABLE}."acoustic" ;;
  }
  dimension: date_key {
    type: number
    sql: ${TABLE}."dateKey" ;;
  }
  dimension: location_key {
    type: string
    sql: ${TABLE}."locationKey" ;;
  }
  dimension: power_output {
    type: number
    sql: ${TABLE}."powerOutput" ;;
  }
  dimension: rotation_speed {
    type: number
    sql: ${TABLE}."rotationSpeed" ;;
  }
  dimension: temperature {
    type: number
    sql: ${TABLE}."temperature" ;;
  }
  dimension: time_key {
    type: string
    sql: ${TABLE}."timeKey" ;;
  }
  dimension: turbine_key {
    type: string
    sql: ${TABLE}."turbineKey" ;;
  }
  dimension: vibration {
    type: number
    sql: ${TABLE}."vibration" ;;
  }
  dimension: wind_direction {
    type: number
    sql: ${TABLE}."windDirection" ;;
  }
  dimension: wind_speed {
    type: number
    sql: ${TABLE}."windSpeed" ;;
  }
  measure: count {
    type: count
  }
}
