view: fact_maintenances {
  sql_table_name: "public"."FactMaintenances" ;;

  dimension: component_key {
    type: string
    sql: ${TABLE}."componentKey" ;;
  }
  dimension: date_key {
    type: number
    sql: ${TABLE}."dateKey" ;;
  }
  dimension: maintenance_cost {
    hidden: yes
    type: number
    sql: ${TABLE}."maintenanceCost" ;;
  }
  dimension: maintenance_description {
    type: string
    sql: ${TABLE}."maintenanceDescription" ;;
  }
  dimension: maintenance_duration {
    hidden: yes
    type: number
    sql: ${TABLE}."maintenanceDuration" ;;
  }
  dimension: maintenance_key {
    primary_key: yes
    type: number
    sql: ${TABLE}."maintenanceKey" ;;
  }
  dimension: maintenance_type_key {
    type: string
    sql: ${TABLE}."maintenanceTypeKey" ;;
  }
  dimension: time_key {
    type: string
    sql: ${TABLE}."timeKey" ;;
  }
  dimension: turbine_key {
    type: string
    sql: ${TABLE}."turbineKey" ;;
  }
  measure: count {
    type: count
  }
  measure: total_maintenance_cost {
    type: sum
    sql: ${maintenance_cost} ;;
  }
  measure: total_maintenance_duration {
    type: sum
    sql: ${maintenance_duration} ;;
  }
}
