connection: "google_analytics"

label: "Google Analytics 4"

include: "/dashboards/*.dashboard"
include: "/explores/**/*.explore.lkml"
include: "/views/*.view"

datagroup: ga4_default_datagroup {
  sql_trigger:  SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*6)/(60*60*24));;
  max_cache_age: "1 hour"
}

persist_with: ga4_default_datagroup

explore: events_20230130 {
  join: events_20230130__items {
    view_label: "Events 20230130: Items"
    sql: LEFT JOIN UNNEST(${events_20230130.items}) as events_20230130__items ;;
    relationship: one_to_many
  }

  join: events_20230130__event_params {
    view_label: "Events 20230130: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230130.event_params}) as events_20230130__event_params ;;
    relationship: one_to_many
  }

  join: events_20230130__user_properties {
    view_label: "Events 20230130: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230130.user_properties}) as events_20230130__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230127 {
  join: events_20230127__items {
    view_label: "Events 20230127: Items"
    sql: LEFT JOIN UNNEST(${events_20230127.items}) as events_20230127__items ;;
    relationship: one_to_many
  }

  join: events_20230127__event_params {
    view_label: "Events 20230127: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230127.event_params}) as events_20230127__event_params ;;
    relationship: one_to_many
  }

  join: events_20230127__user_properties {
    view_label: "Events 20230127: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230127.user_properties}) as events_20230127__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230129 {
  join: events_20230129__items {
    view_label: "Events 20230129: Items"
    sql: LEFT JOIN UNNEST(${events_20230129.items}) as events_20230129__items ;;
    relationship: one_to_many
  }

  join: events_20230129__event_params {
    view_label: "Events 20230129: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230129.event_params}) as events_20230129__event_params ;;
    relationship: one_to_many
  }

  join: events_20230129__user_properties {
    view_label: "Events 20230129: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230129.user_properties}) as events_20230129__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230114 {
  join: events_20230114__items {
    view_label: "Events 20230114: Items"
    sql: LEFT JOIN UNNEST(${events_20230114.items}) as events_20230114__items ;;
    relationship: one_to_many
  }

  join: events_20230114__event_params {
    view_label: "Events 20230114: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230114.event_params}) as events_20230114__event_params ;;
    relationship: one_to_many
  }

  join: events_20230114__user_properties {
    view_label: "Events 20230114: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230114.user_properties}) as events_20230114__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230126 {
  join: events_20230126__items {
    view_label: "Events 20230126: Items"
    sql: LEFT JOIN UNNEST(${events_20230126.items}) as events_20230126__items ;;
    relationship: one_to_many
  }

  join: events_20230126__event_params {
    view_label: "Events 20230126: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230126.event_params}) as events_20230126__event_params ;;
    relationship: one_to_many
  }

  join: events_20230126__user_properties {
    view_label: "Events 20230126: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230126.user_properties}) as events_20230126__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230113 {
  join: events_20230113__items {
    view_label: "Events 20230113: Items"
    sql: LEFT JOIN UNNEST(${events_20230113.items}) as events_20230113__items ;;
    relationship: one_to_many
  }

  join: events_20230113__event_params {
    view_label: "Events 20230113: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230113.event_params}) as events_20230113__event_params ;;
    relationship: one_to_many
  }

  join: events_20230113__user_properties {
    view_label: "Events 20230113: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230113.user_properties}) as events_20230113__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230128 {
  join: events_20230128__items {
    view_label: "Events 20230128: Items"
    sql: LEFT JOIN UNNEST(${events_20230128.items}) as events_20230128__items ;;
    relationship: one_to_many
  }

  join: events_20230128__event_params {
    view_label: "Events 20230128: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230128.event_params}) as events_20230128__event_params ;;
    relationship: one_to_many
  }

  join: events_20230128__user_properties {
    view_label: "Events 20230128: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230128.user_properties}) as events_20230128__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230125 {
  join: events_20230125__items {
    view_label: "Events 20230125: Items"
    sql: LEFT JOIN UNNEST(${events_20230125.items}) as events_20230125__items ;;
    relationship: one_to_many
  }

  join: events_20230125__event_params {
    view_label: "Events 20230125: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230125.event_params}) as events_20230125__event_params ;;
    relationship: one_to_many
  }

  join: events_20230125__user_properties {
    view_label: "Events 20230125: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230125.user_properties}) as events_20230125__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230201 {
  join: events_20230201__items {
    view_label: "Events 20230201: Items"
    sql: LEFT JOIN UNNEST(${events_20230201.items}) as events_20230201__items ;;
    relationship: one_to_many
  }

  join: events_20230201__event_params {
    view_label: "Events 20230201: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230201.event_params}) as events_20230201__event_params ;;
    relationship: one_to_many
  }

  join: events_20230201__user_properties {
    view_label: "Events 20230201: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230201.user_properties}) as events_20230201__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230203 {
  join: events_20230203__items {
    view_label: "Events 20230203: Items"
    sql: LEFT JOIN UNNEST(${events_20230203.items}) as events_20230203__items ;;
    relationship: one_to_many
  }

  join: events_20230203__event_params {
    view_label: "Events 20230203: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230203.event_params}) as events_20230203__event_params ;;
    relationship: one_to_many
  }

  join: events_20230203__user_properties {
    view_label: "Events 20230203: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230203.user_properties}) as events_20230203__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230205 {
  join: events_20230205__items {
    view_label: "Events 20230205: Items"
    sql: LEFT JOIN UNNEST(${events_20230205.items}) as events_20230205__items ;;
    relationship: one_to_many
  }

  join: events_20230205__event_params {
    view_label: "Events 20230205: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230205.event_params}) as events_20230205__event_params ;;
    relationship: one_to_many
  }

  join: events_20230205__user_properties {
    view_label: "Events 20230205: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230205.user_properties}) as events_20230205__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230131 {
  join: events_20230131__items {
    view_label: "Events 20230131: Items"
    sql: LEFT JOIN UNNEST(${events_20230131.items}) as events_20230131__items ;;
    relationship: one_to_many
  }

  join: events_20230131__event_params {
    view_label: "Events 20230131: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230131.event_params}) as events_20230131__event_params ;;
    relationship: one_to_many
  }

  join: events_20230131__user_properties {
    view_label: "Events 20230131: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230131.user_properties}) as events_20230131__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230207 {
  join: events_20230207__items {
    view_label: "Events 20230207: Items"
    sql: LEFT JOIN UNNEST(${events_20230207.items}) as events_20230207__items ;;
    relationship: one_to_many
  }

  join: events_20230207__event_params {
    view_label: "Events 20230207: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230207.event_params}) as events_20230207__event_params ;;
    relationship: one_to_many
  }

  join: events_20230207__user_properties {
    view_label: "Events 20230207: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230207.user_properties}) as events_20230207__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230206 {
  join: events_20230206__items {
    view_label: "Events 20230206: Items"
    sql: LEFT JOIN UNNEST(${events_20230206.items}) as events_20230206__items ;;
    relationship: one_to_many
  }

  join: events_20230206__event_params {
    view_label: "Events 20230206: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230206.event_params}) as events_20230206__event_params ;;
    relationship: one_to_many
  }

  join: events_20230206__user_properties {
    view_label: "Events 20230206: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230206.user_properties}) as events_20230206__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230204 {
  join: events_20230204__items {
    view_label: "Events 20230204: Items"
    sql: LEFT JOIN UNNEST(${events_20230204.items}) as events_20230204__items ;;
    relationship: one_to_many
  }

  join: events_20230204__event_params {
    view_label: "Events 20230204: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230204.event_params}) as events_20230204__event_params ;;
    relationship: one_to_many
  }

  join: events_20230204__user_properties {
    view_label: "Events 20230204: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230204.user_properties}) as events_20230204__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230202 {
  join: events_20230202__items {
    view_label: "Events 20230202: Items"
    sql: LEFT JOIN UNNEST(${events_20230202.items}) as events_20230202__items ;;
    relationship: one_to_many
  }

  join: events_20230202__event_params {
    view_label: "Events 20230202: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230202.event_params}) as events_20230202__event_params ;;
    relationship: one_to_many
  }

  join: events_20230202__user_properties {
    view_label: "Events 20230202: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230202.user_properties}) as events_20230202__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230208 {
  join: events_20230208__items {
    view_label: "Events 20230208: Items"
    sql: LEFT JOIN UNNEST(${events_20230208.items}) as events_20230208__items ;;
    relationship: one_to_many
  }

  join: events_20230208__event_params {
    view_label: "Events 20230208: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230208.event_params}) as events_20230208__event_params ;;
    relationship: one_to_many
  }

  join: events_20230208__user_properties {
    view_label: "Events 20230208: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230208.user_properties}) as events_20230208__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230209 {
  join: events_20230209__items {
    view_label: "Events 20230209: Items"
    sql: LEFT JOIN UNNEST(${events_20230209.items}) as events_20230209__items ;;
    relationship: one_to_many
  }

  join: events_20230209__event_params {
    view_label: "Events 20230209: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230209.event_params}) as events_20230209__event_params ;;
    relationship: one_to_many
  }

  join: events_20230209__user_properties {
    view_label: "Events 20230209: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230209.user_properties}) as events_20230209__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230210 {
  join: events_20230210__items {
    view_label: "Events 20230210: Items"
    sql: LEFT JOIN UNNEST(${events_20230210.items}) as events_20230210__items ;;
    relationship: one_to_many
  }

  join: events_20230210__event_params {
    view_label: "Events 20230210: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230210.event_params}) as events_20230210__event_params ;;
    relationship: one_to_many
  }

  join: events_20230210__user_properties {
    view_label: "Events 20230210: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230210.user_properties}) as events_20230210__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230212 {
  join: events_20230212__items {
    view_label: "Events 20230212: Items"
    sql: LEFT JOIN UNNEST(${events_20230212.items}) as events_20230212__items ;;
    relationship: one_to_many
  }

  join: events_20230212__event_params {
    view_label: "Events 20230212: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230212.event_params}) as events_20230212__event_params ;;
    relationship: one_to_many
  }

  join: events_20230212__user_properties {
    view_label: "Events 20230212: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230212.user_properties}) as events_20230212__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230213 {
  join: events_20230213__items {
    view_label: "Events 20230213: Items"
    sql: LEFT JOIN UNNEST(${events_20230213.items}) as events_20230213__items ;;
    relationship: one_to_many
  }

  join: events_20230213__event_params {
    view_label: "Events 20230213: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230213.event_params}) as events_20230213__event_params ;;
    relationship: one_to_many
  }

  join: events_20230213__user_properties {
    view_label: "Events 20230213: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230213.user_properties}) as events_20230213__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230215 {
  join: events_20230215__items {
    view_label: "Events 20230215: Items"
    sql: LEFT JOIN UNNEST(${events_20230215.items}) as events_20230215__items ;;
    relationship: one_to_many
  }

  join: events_20230215__event_params {
    view_label: "Events 20230215: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230215.event_params}) as events_20230215__event_params ;;
    relationship: one_to_many
  }

  join: events_20230215__user_properties {
    view_label: "Events 20230215: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230215.user_properties}) as events_20230215__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230214 {
  join: events_20230214__items {
    view_label: "Events 20230214: Items"
    sql: LEFT JOIN UNNEST(${events_20230214.items}) as events_20230214__items ;;
    relationship: one_to_many
  }

  join: events_20230214__event_params {
    view_label: "Events 20230214: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230214.event_params}) as events_20230214__event_params ;;
    relationship: one_to_many
  }

  join: events_20230214__user_properties {
    view_label: "Events 20230214: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230214.user_properties}) as events_20230214__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230211 {
  join: events_20230211__items {
    view_label: "Events 20230211: Items"
    sql: LEFT JOIN UNNEST(${events_20230211.items}) as events_20230211__items ;;
    relationship: one_to_many
  }

  join: events_20230211__event_params {
    view_label: "Events 20230211: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230211.event_params}) as events_20230211__event_params ;;
    relationship: one_to_many
  }

  join: events_20230211__user_properties {
    view_label: "Events 20230211: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230211.user_properties}) as events_20230211__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230216 {
  join: events_20230216__items {
    view_label: "Events 20230216: Items"
    sql: LEFT JOIN UNNEST(${events_20230216.items}) as events_20230216__items ;;
    relationship: one_to_many
  }

  join: events_20230216__event_params {
    view_label: "Events 20230216: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230216.event_params}) as events_20230216__event_params ;;
    relationship: one_to_many
  }

  join: events_20230216__user_properties {
    view_label: "Events 20230216: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230216.user_properties}) as events_20230216__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230217 {
  join: events_20230217__items {
    view_label: "Events 20230217: Items"
    sql: LEFT JOIN UNNEST(${events_20230217.items}) as events_20230217__items ;;
    relationship: one_to_many
  }

  join: events_20230217__event_params {
    view_label: "Events 20230217: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230217.event_params}) as events_20230217__event_params ;;
    relationship: one_to_many
  }

  join: events_20230217__user_properties {
    view_label: "Events 20230217: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230217.user_properties}) as events_20230217__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230219 {
  join: events_20230219__items {
    view_label: "Events 20230219: Items"
    sql: LEFT JOIN UNNEST(${events_20230219.items}) as events_20230219__items ;;
    relationship: one_to_many
  }

  join: events_20230219__event_params {
    view_label: "Events 20230219: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230219.event_params}) as events_20230219__event_params ;;
    relationship: one_to_many
  }

  join: events_20230219__user_properties {
    view_label: "Events 20230219: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230219.user_properties}) as events_20230219__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230223 {
  join: events_20230223__items {
    view_label: "Events 20230223: Items"
    sql: LEFT JOIN UNNEST(${events_20230223.items}) as events_20230223__items ;;
    relationship: one_to_many
  }

  join: events_20230223__event_params {
    view_label: "Events 20230223: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230223.event_params}) as events_20230223__event_params ;;
    relationship: one_to_many
  }

  join: events_20230223__user_properties {
    view_label: "Events 20230223: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230223.user_properties}) as events_20230223__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230218 {
  join: events_20230218__items {
    view_label: "Events 20230218: Items"
    sql: LEFT JOIN UNNEST(${events_20230218.items}) as events_20230218__items ;;
    relationship: one_to_many
  }

  join: events_20230218__event_params {
    view_label: "Events 20230218: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230218.event_params}) as events_20230218__event_params ;;
    relationship: one_to_many
  }

  join: events_20230218__user_properties {
    view_label: "Events 20230218: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230218.user_properties}) as events_20230218__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230220 {
  join: events_20230220__items {
    view_label: "Events 20230220: Items"
    sql: LEFT JOIN UNNEST(${events_20230220.items}) as events_20230220__items ;;
    relationship: one_to_many
  }

  join: events_20230220__event_params {
    view_label: "Events 20230220: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230220.event_params}) as events_20230220__event_params ;;
    relationship: one_to_many
  }

  join: events_20230220__user_properties {
    view_label: "Events 20230220: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230220.user_properties}) as events_20230220__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230221 {
  join: events_20230221__items {
    view_label: "Events 20230221: Items"
    sql: LEFT JOIN UNNEST(${events_20230221.items}) as events_20230221__items ;;
    relationship: one_to_many
  }

  join: events_20230221__event_params {
    view_label: "Events 20230221: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230221.event_params}) as events_20230221__event_params ;;
    relationship: one_to_many
  }

  join: events_20230221__user_properties {
    view_label: "Events 20230221: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230221.user_properties}) as events_20230221__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230222 {
  join: events_20230222__items {
    view_label: "Events 20230222: Items"
    sql: LEFT JOIN UNNEST(${events_20230222.items}) as events_20230222__items ;;
    relationship: one_to_many
  }

  join: events_20230222__event_params {
    view_label: "Events 20230222: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230222.event_params}) as events_20230222__event_params ;;
    relationship: one_to_many
  }

  join: events_20230222__user_properties {
    view_label: "Events 20230222: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230222.user_properties}) as events_20230222__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230224 {
  join: events_20230224__items {
    view_label: "Events 20230224: Items"
    sql: LEFT JOIN UNNEST(${events_20230224.items}) as events_20230224__items ;;
    relationship: one_to_many
  }

  join: events_20230224__event_params {
    view_label: "Events 20230224: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230224.event_params}) as events_20230224__event_params ;;
    relationship: one_to_many
  }

  join: events_20230224__user_properties {
    view_label: "Events 20230224: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230224.user_properties}) as events_20230224__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230225 {
  join: events_20230225__items {
    view_label: "Events 20230225: Items"
    sql: LEFT JOIN UNNEST(${events_20230225.items}) as events_20230225__items ;;
    relationship: one_to_many
  }

  join: events_20230225__event_params {
    view_label: "Events 20230225: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230225.event_params}) as events_20230225__event_params ;;
    relationship: one_to_many
  }

  join: events_20230225__user_properties {
    view_label: "Events 20230225: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230225.user_properties}) as events_20230225__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230228 {
  join: events_20230228__items {
    view_label: "Events 20230228: Items"
    sql: LEFT JOIN UNNEST(${events_20230228.items}) as events_20230228__items ;;
    relationship: one_to_many
  }

  join: events_20230228__event_params {
    view_label: "Events 20230228: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230228.event_params}) as events_20230228__event_params ;;
    relationship: one_to_many
  }

  join: events_20230228__user_properties {
    view_label: "Events 20230228: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230228.user_properties}) as events_20230228__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230226 {
  join: events_20230226__items {
    view_label: "Events 20230226: Items"
    sql: LEFT JOIN UNNEST(${events_20230226.items}) as events_20230226__items ;;
    relationship: one_to_many
  }

  join: events_20230226__event_params {
    view_label: "Events 20230226: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230226.event_params}) as events_20230226__event_params ;;
    relationship: one_to_many
  }

  join: events_20230226__user_properties {
    view_label: "Events 20230226: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230226.user_properties}) as events_20230226__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230227 {
  join: events_20230227__items {
    view_label: "Events 20230227: Items"
    sql: LEFT JOIN UNNEST(${events_20230227.items}) as events_20230227__items ;;
    relationship: one_to_many
  }

  join: events_20230227__event_params {
    view_label: "Events 20230227: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230227.event_params}) as events_20230227__event_params ;;
    relationship: one_to_many
  }

  join: events_20230227__user_properties {
    view_label: "Events 20230227: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230227.user_properties}) as events_20230227__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230303 {
  join: events_20230303__items {
    view_label: "Events 20230303: Items"
    sql: LEFT JOIN UNNEST(${events_20230303.items}) as events_20230303__items ;;
    relationship: one_to_many
  }

  join: events_20230303__event_params {
    view_label: "Events 20230303: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230303.event_params}) as events_20230303__event_params ;;
    relationship: one_to_many
  }

  join: events_20230303__user_properties {
    view_label: "Events 20230303: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230303.user_properties}) as events_20230303__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230302 {
  join: events_20230302__items {
    view_label: "Events 20230302: Items"
    sql: LEFT JOIN UNNEST(${events_20230302.items}) as events_20230302__items ;;
    relationship: one_to_many
  }

  join: events_20230302__event_params {
    view_label: "Events 20230302: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230302.event_params}) as events_20230302__event_params ;;
    relationship: one_to_many
  }

  join: events_20230302__user_properties {
    view_label: "Events 20230302: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230302.user_properties}) as events_20230302__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230301 {
  join: events_20230301__items {
    view_label: "Events 20230301: Items"
    sql: LEFT JOIN UNNEST(${events_20230301.items}) as events_20230301__items ;;
    relationship: one_to_many
  }

  join: events_20230301__event_params {
    view_label: "Events 20230301: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230301.event_params}) as events_20230301__event_params ;;
    relationship: one_to_many
  }

  join: events_20230301__user_properties {
    view_label: "Events 20230301: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230301.user_properties}) as events_20230301__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230305 {
  join: events_20230305__items {
    view_label: "Events 20230305: Items"
    sql: LEFT JOIN UNNEST(${events_20230305.items}) as events_20230305__items ;;
    relationship: one_to_many
  }

  join: events_20230305__event_params {
    view_label: "Events 20230305: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230305.event_params}) as events_20230305__event_params ;;
    relationship: one_to_many
  }

  join: events_20230305__user_properties {
    view_label: "Events 20230305: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230305.user_properties}) as events_20230305__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230304 {
  join: events_20230304__items {
    view_label: "Events 20230304: Items"
    sql: LEFT JOIN UNNEST(${events_20230304.items}) as events_20230304__items ;;
    relationship: one_to_many
  }

  join: events_20230304__event_params {
    view_label: "Events 20230304: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230304.event_params}) as events_20230304__event_params ;;
    relationship: one_to_many
  }

  join: events_20230304__user_properties {
    view_label: "Events 20230304: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230304.user_properties}) as events_20230304__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230307 {
  join: events_20230307__items {
    view_label: "Events 20230307: Items"
    sql: LEFT JOIN UNNEST(${events_20230307.items}) as events_20230307__items ;;
    relationship: one_to_many
  }

  join: events_20230307__event_params {
    view_label: "Events 20230307: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230307.event_params}) as events_20230307__event_params ;;
    relationship: one_to_many
  }

  join: events_20230307__user_properties {
    view_label: "Events 20230307: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230307.user_properties}) as events_20230307__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230306 {
  join: events_20230306__items {
    view_label: "Events 20230306: Items"
    sql: LEFT JOIN UNNEST(${events_20230306.items}) as events_20230306__items ;;
    relationship: one_to_many
  }

  join: events_20230306__event_params {
    view_label: "Events 20230306: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230306.event_params}) as events_20230306__event_params ;;
    relationship: one_to_many
  }

  join: events_20230306__user_properties {
    view_label: "Events 20230306: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230306.user_properties}) as events_20230306__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230309 {
  join: events_20230309__items {
    view_label: "Events 20230309: Items"
    sql: LEFT JOIN UNNEST(${events_20230309.items}) as events_20230309__items ;;
    relationship: one_to_many
  }

  join: events_20230309__event_params {
    view_label: "Events 20230309: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230309.event_params}) as events_20230309__event_params ;;
    relationship: one_to_many
  }

  join: events_20230309__user_properties {
    view_label: "Events 20230309: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230309.user_properties}) as events_20230309__user_properties ;;
    relationship: one_to_many
  }
}

explore: events_20230308 {
  join: events_20230308__items {
    view_label: "Events 20230308: Items"
    sql: LEFT JOIN UNNEST(${events_20230308.items}) as events_20230308__items ;;
    relationship: one_to_many
  }

  join: events_20230308__event_params {
    view_label: "Events 20230308: Event Params"
    sql: LEFT JOIN UNNEST(${events_20230308.event_params}) as events_20230308__event_params ;;
    relationship: one_to_many
  }

  join: events_20230308__user_properties {
    view_label: "Events 20230308: User Properties"
    sql: LEFT JOIN UNNEST(${events_20230308.user_properties}) as events_20230308__user_properties ;;
    relationship: one_to_many
  }
}
