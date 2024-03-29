# The name of this view in Looker is "Looker Scratch Tst Reg Ebffc1deed5d25a581"
view: looker_scratch__tst_reg_ebffc1deed5d25a581 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.looker_scratch__tst_reg_ebffc1deed5d25a581`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Created At" in Explore.

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }

  dimension: looker {
    type: string
    sql: ${TABLE}.looker ;;
  }

  dimension: reg_key {
    type: string
    sql: ${TABLE}.reg_key ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_created_at {
    type: sum
    hidden: yes
    sql: ${created_at} ;;
  }

  measure: average_created_at {
    type: average
    hidden: yes
    sql: ${created_at} ;;
  }

  measure: total_expires_at {
    type: sum
    hidden: yes
    sql: ${expires_at} ;;
  }

  measure: average_expires_at {
    type: average
    hidden: yes
    sql: ${expires_at} ;;
  }
}
