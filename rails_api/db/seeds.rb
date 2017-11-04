# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Measure.find_or_create_by!(name: "gallon", abbrev: "g")
Measure.find_or_create_by!(name: "half-gallon", abbrev: "1/2g")
Measure.find_or_create_by!(name: "quart", abbrev: "qt")
Measure.find_or_create_by!(name: "pint", abbrev: "pt")
Measure.find_or_create_by!(name: "pound", abbrev: "lb")
Measure.find_or_create_by!(name: "cup", abbrev: "c")
Measure.find_or_create_by!(name: "ounce", abbrev: "oz")
Measure.find_or_create_by!(name: "tablespoon", abbrev: "Tsp")
Measure.find_or_create_by!(name: "teaspoon", abbrev: "tsp")
Measure.find_or_create_by!(name: "kilogram", abbrev: "kg")
Measure.find_or_create_by!(name: "gram", abbrev: "gr")
Measure.find_or_create_by!(name: "decalitre", abbrev: "Dl")
Measure.find_or_create_by!(name: "litre", abbrev: "l")
Measure.find_or_create_by!(name: "decilitre", abbrev: "dl")
Measure.find_or_create_by!(name: "millilitre", abbrev: "ml")

Measure.find_or_create_by!(name: "whole", abbrev: "whole")
Measure.find_or_create_by!(name: "of", abbrev: "of")


