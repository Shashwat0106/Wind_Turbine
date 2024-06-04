view: dim_components {
  sql_table_name: "public"."DimComponents" ;;

  dimension: component_id {
    type: string
    sql: ${TABLE}."componentID" ;;
  }
  dimension: component_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."componentKey" ;;
  }
  dimension: component_name {
    type: string
    sql: ${TABLE}."componentName" ;;
  }
  dimension: component_type {
    type: string
    sql: ${TABLE}."componentType" ;;
  }
  dimension: manufacturer {
    type: string
    sql: ${TABLE}."manufacturer" ;;
  }
  measure: count {
    type: count
    drill_fields: [component_name]
  }
}
