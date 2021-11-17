# The name of this view in Looker is "Erin Newtable"
view: erin_newtable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.erin_newtable`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "My Column" in Explore.

  dimension: my_column {
    type: number
    description: "column description from BQ"
    sql: ${TABLE}.my_column ;;
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

  measure: total_my_column {
    type: sum
    hidden: yes
    sql: ${my_column} ;;
  }

  measure: average_my_column {
    type: average
    hidden: yes
    sql: ${my_column} ;;
  }
}
