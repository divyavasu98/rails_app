# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Entering the records in the database."
(1..10).each do |x|
  if x.odd?
    first_name = "Student First " + "#{x}"
    last_name = "Student Last " + "#{x}"
    email = "email_" + "#{x}" + "@hello.com"
    year_of_birth = "04-10-1998"
    gender = "Male"
    fathers_name = "xyz"
    mothers_name = "abc"
    address = "abcdef"
  else
    first_name = "Student First " + "#{x}"
    last_name = "Student Last " + "#{x}"
    email = "email_" + "#{x}" + "@hello.com"
    year_of_birth = "03-5-1995"
    gender = "Female"
    fathers_name = "xyz"
    mothers_name = "abc"
    address = "abcdef"
  end
  puts "Entering record #{x} of 5."
  Student.create(first_name: first_name, last_name: last_name, email: email, year_of_birth: year_of_birth, gender: gender,fathers_name: fathers_name, mothers_name: mothers_name, address: address)
end