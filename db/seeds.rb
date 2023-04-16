# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
#t.datetime "date_time"
#t.string "vibe"
#t.string "health"
#t.string "activity"
#t.string "happiness"
#t.string "work"
#t.string "school"
#t.string "love"
#t.text "note"
Mood.create([{date_time: Time.now, vibe: "Good", health: "Bad", activity: "Good", happiness: "Good", work: "Bad", school:"Bad", love: "good", note: "I just wanna play video game!"}, {date_time: Time.now, vibe: "Good", health: "Bad", activity: "Good", happiness: "Good", work: "Bad", school:"Bad", love: "good", note: "I just wanna play video game!"}, {date_time: Time.now, vibe: "Good", health: "Bad", activity: "Good", happiness: "Good", work: "Bad", school:"Bad", love: "good", note: "I just wanna play video game!"}, {date_time: Time.now, vibe: "Good", health: "Bad", activity: "Good", happiness: "Good", work: "Bad", school:"Bad", love: "good", note: "I just wanna play video game!"}, {date_time: Time.now, vibe: "Good", health: "Bad", activity: "Good", happiness: "Good", work: "Bad", school:"Bad", love: "good", note: "I just wanna play video game!"}])