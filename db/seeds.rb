# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Default events
events = [
  {
    name: "Hack The Commute - Seattle",
    address: "1110 2nd Ave, Ste 500",
    city: "Seattle",
    state: "WA",
    zip: 98101,
    latitude: 47.6059494,
    longitude: -122.3358557,
    event_start_date: DateTime.parse("2015-03-20 08:00:00"),
    event_end_date: DateTime.parse("2015-03-20 22:00:00")
  },
  {
    name: "Hack The Commute - Seattle",
    address: "1110 2nd Ave, Ste 500",
    city: "Seattle",
    state: "WA",
    zip: 98101,
    latitude: 47.6059494,
    longitude: -122.3358557,
    event_start_date: DateTime.parse("2015-03-21 08:00:00"),
    event_end_date: DateTime.parse("2015-03-21 22:00:00")
  },
  {
    name: "Hack The Commute - Seattle",
    address: "1110 2nd Ave, Ste 500",
    city: "Seattle",
    state: "WA",
    zip: 98101,
    latitude: 47.6059494,
    longitude: -122.3358557,
    event_start_date: DateTime.parse("2015-03-22 08:00:00"),
    event_end_date: DateTime.parse("2015-03-22 22:00:00")
  }
]
events.each {|e| Event.create(e) }
