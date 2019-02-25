# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
Event.delete_all

today = Date.new(2019,2,24)
365.times do |i|
    rem = i%9
    case rem
    when 1..2
        Event.create([type_of_shift: 'Day', date: today])
    when 3..4
        Event.create([type_of_shift: 'Night', date: today])
    when 5..8

    end
    today += 1
end

