# The name of this view in Looker is "Nested and Repeated"
view: nested_and_repeated {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_test.nested_and_repeated`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: doubly_nested_and_repeated {
    hidden: yes
    sql: ${TABLE}.doubly_nested_and_repeated ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Nested Field This Inner Float" in Explore.

  dimension: nested_field__this_inner_float {
    type: number
    sql: ${TABLE}.nested_field.this_inner_float ;;
    group_label: "Nested Field"
    group_item_label: "This Inner Float"
  }

  dimension: nested_field__this_inner_string {
    type: string
    sql: ${TABLE}.nested_field.this_inner_string ;;
    group_label: "Nested Field"
    group_item_label: "This Inner String"
  }

  dimension: repeated_field {
    hidden: yes
    sql: ${TABLE}.repeated_field ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_nested_field__this_inner_float {
    type: sum
    hidden: yes
    sql: ${nested_field__this_inner_float} ;;
  }

  measure: average_nested_field__this_inner_float {
    type: average
    hidden: yes
    sql: ${nested_field__this_inner_float} ;;
  }
}

# The name of this view in Looker is "Nested and Repeated Repeated Field"
view: nested_and_repeated__repeated_field {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Nested and Repeated Repeated Field" in Explore.

  dimension: nested_and_repeated__repeated_field {
    type: string
    sql: nested_and_repeated__repeated_field ;;
  }
}

# The name of this view in Looker is "Nested and Repeated Doubly Nested and Repeated"
view: nested_and_repeated__doubly_nested_and_repeated {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: inner_repeated {
    hidden: yes
    sql: ${TABLE}.inner_repeated ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Other Field" in Explore.

  dimension: other_field {
    type: number
    sql: ${TABLE}.other_field ;;
  }
}

# The name of this view in Looker is "Nested and Repeated Doubly Nested and Repeated Inner Repeated"
view: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Nested and Repeated Doubly Nested and Repeated Inner Repeated" in Explore.

  dimension: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
    type: string
    sql: nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
  }
}
