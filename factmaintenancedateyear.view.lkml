
view: factmaintenancedateyear {
  derived_table: {
    sql: SELECT
          fact_maintenances."componentKey"  AS "fact_maintenances.component_key",
          fact_maintenances."dateKey"  AS "fact_maintenances.date_key",
          fact_maintenances."maintenanceCost"  AS "fact_maintenances.maintenance_cost",
          fact_maintenances."maintenanceDescription"  AS "fact_maintenances.maintenance_description",
          fact_maintenances."maintenanceDuration"  AS "fact_maintenances.maintenance_duration",
          fact_maintenances."maintenanceKey"  AS "fact_maintenances.maintenance_key",
          fact_maintenances."maintenanceTypeKey"  AS "fact_maintenances.maintenance_type_key",
          fact_maintenances."timeKey"  AS "fact_maintenances.time_key",
          fact_maintenances."turbineKey"  AS "fact_maintenances.turbine_key",
              (DATE(dim_dates."date" )) AS "dim_dates.date_date",
              (EXTRACT(YEAR FROM dim_dates."date" )::integer) AS "dim_dates.date_year"
      FROM public."FactMaintenances"  AS fact_maintenances
      LEFT JOIN public."DimDates"  AS dim_dates ON (fact_maintenances."dateKey") =(dim_dates."dateKey")
      ORDER BY
          1
      FETCH NEXT 500 ROWS ONLY ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fact_maintenances_component_key {
    type: string
    sql: ${TABLE}."fact_maintenances.component_key" ;;
  }

  dimension: fact_maintenances_date_key {
    type: number
    sql: ${TABLE}."fact_maintenances.date_key" ;;
  }

  dimension: fact_maintenances_maintenance_cost {
    type: number
    sql: ${TABLE}."fact_maintenances.maintenance_cost" ;;
  }

  dimension: fact_maintenances_maintenance_description {
    type: string
    sql: ${TABLE}."fact_maintenances.maintenance_description" ;;
  }

  dimension: fact_maintenances_maintenance_duration {
    type: number
    sql: ${TABLE}."fact_maintenances.maintenance_duration" ;;
  }

  dimension: fact_maintenances_maintenance_key {
    type: string
    sql: ${TABLE}."fact_maintenances.maintenance_key" ;;
  }

  dimension: fact_maintenances_maintenance_type_key {
    type: string
    sql: ${TABLE}."fact_maintenances.maintenance_type_key" ;;
  }

  dimension: fact_maintenances_time_key {
    type: string
    sql: ${TABLE}."fact_maintenances.time_key" ;;
  }

  dimension: fact_maintenances_turbine_key {
    type: string
    sql: ${TABLE}."fact_maintenances.turbine_key" ;;
  }

  dimension: dim_dates_date_date {
    type: date
    sql: ${TABLE}."dim_dates.date_date" ;;
  }

  dimension: dim_dates_date_year {
    type: number
    sql: ${TABLE}."dim_dates.date_year" ;;
  }

  set: detail {
    fields: [
        fact_maintenances_component_key,
	fact_maintenances_date_key,
	fact_maintenances_maintenance_cost,
	fact_maintenances_maintenance_description,
	fact_maintenances_maintenance_duration,
	fact_maintenances_maintenance_key,
	fact_maintenances_maintenance_type_key,
	fact_maintenances_time_key,
	fact_maintenances_turbine_key,
	dim_dates_date_date,
	dim_dates_date_year
    ]
  }
}
