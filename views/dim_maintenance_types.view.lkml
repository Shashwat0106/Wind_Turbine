view: dim_maintenance_types {
  sql_table_name: public.DimMaintenanceTypes ;;

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }
  dimension: maintenance_type_id {
    type: number
    sql: ${TABLE}."maintenanceTypeID" ;;
  }
  dimension: maintenance_type_key {
    primary_key: yes
    type: string
    sql: ${TABLE}."maintenanceTypeKey" ;;
  }
  dimension: maintenance_type_name {
    type: string
    sql: ${TABLE}."maintenanceTypeName" ;;
  }
  measure: count {
    type: count
    drill_fields: [maintenance_type_name]
  }
}
