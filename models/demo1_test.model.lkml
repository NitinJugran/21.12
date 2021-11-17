# Define the database connection to be used for this model.
connection: "bigquery"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: demo1_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo1_test_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Demo1 Test"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: all_types {}

explore: asdftest {}

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: billion_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: connection_reg_r3 {}

explore: erin_newtable {}

explore: fake_scratch__connection_reg_r3 {}

explore: fatal_error_persist_for_five_seconds {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: mat_view_base_1247 {}

explore: mat_view_base_3317 {}

explore: mat_view_base_3890 {}

explore: mat_view_base_4309 {}

explore: nested_and_repeated {
  join: nested_and_repeated__repeated_field {
    view_label: "Nested And Repeated: Repeated Field"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.repeated_field}) as nested_and_repeated__repeated_field ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated.doubly_nested_and_repeated}) as nested_and_repeated__doubly_nested_and_repeated ;;
    relationship: one_to_many
  }

  join: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
    view_label: "Nested And Repeated: Doubly Nested And Repeated Inner Repeated"
    sql: LEFT JOIN UNNEST(${nested_and_repeated__doubly_nested_and_repeated.inner_repeated}) as nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
    relationship: one_to_many
  }
}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_base_copy {
  join: users {
    type: left_outer
    sql_on: ${orders_base_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string_test2 {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_on_col_test_2599 {}

explore: partition_on_col_test_7d6f {}

explore: partition_on_col_test_c110 {}

explore: partition_on_col_test_da74 {}

explore: partition_table_a_119e {}

explore: partition_table_a_1b77 {}

explore: partition_table_a_41d3 {}

explore: partition_table_a_7157 {}

explore: partition_table_a_7b11 {}

explore: partition_table_a_a9d0 {}

explore: partition_table_a_cc69 {}

explore: partition_table_a_f379 {}

explore: partition_table_b_1954 {}

explore: partition_table_b_1ae9 {}

explore: partition_table_b_3624 {}

explore: partition_table_b_41bd {}

explore: partition_table_b_798e {}

explore: partition_table_b_b2fe {}

explore: partition_table_b_c777 {}

explore: partition_table_b_dcfa {}

explore: partition_table_test2 {}

explore: partitiondate_test_5ff0c6c8 {}

explore: partitiondate_test_b0ea657e {}

explore: partitiondate_test_f38f76f1 {}

explore: partitiondate_test_ff471f55 {}

explore: partitiontime_test_2f95 {}

explore: partitiontime_test_6be5 {}

explore: testing_table {}

explore: testing_table_one {}

explore: testme {}

explore: users {}
