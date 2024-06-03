connection: "wind-trubine-data"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: wind_turbine_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: wind_turbine_analytics_default_datagroup

explore: dim_components {


}

explore: dim_dates {}

explore: dim_locations {}

explore: dim_maintenance_types {}

explore: dim_times {}

explore: dim_turbines {}

explore: fact_maintenances {
  join: dim_turbines {
    type: left_outer
    sql_on: ${fact_maintenances.turbine_key}=${dim_turbines.turbine_key} ;;
    relationship: many_to_one
  }
  join: dim_components {
    type: left_outer
    sql_on: ${fact_maintenances.component_key}=${dim_components.component_key} ;;
    relationship: many_to_one
  }
  join: dim_maintenance_types {
    type: left_outer
    sql_on: ${fact_maintenances.maintenance_type_key} =${dim_maintenance_types.maintenance_type_key};;
    relationship: many_to_one
  }
  join: dim_dates {
    type: left_outer
    sql_on: ${fact_maintenances.date_key} =${dim_dates.date_key};;
    relationship: many_to_one
  }
  join: dim_times {
    type: left_outer
    sql_on: ${fact_maintenances.time_key}=${dim_times.time_key} ;;
    relationship: many_to_one
  }
}

explore: fact_turbine_performances {}
