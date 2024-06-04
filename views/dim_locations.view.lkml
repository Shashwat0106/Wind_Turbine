view: dim_locations {
  sql_table_name: "public"."DimLocations" ;;

  dimension: elevation {
    type: number
    sql: ${TABLE}."elevation" ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }
  dimension: location_id {
    type: string
    sql: ${TABLE}."locationID" ;;
  }
  dimension: location_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."locationKey" ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }
  #dimension: location {
   # type: location
   # sql_latitude: ${latitude} ;;
   # sql_longitude: ${longitude} ;;
  #}
  measure: count {
    type: count
  }
}
