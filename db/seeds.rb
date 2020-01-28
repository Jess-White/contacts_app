# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = Contact.new(
                      first_name: "Sideshow",
                      last_name: "Bob",
                      email: "evil@bigfeet.co"
                      phone_number: "789 990-5550"
                      )
contact.save

# 1000.times do 
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         first_name: first_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email(name: "#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number
#                         )
#   contact.save
# end

Contact.all.each do |contact|
  contact.middle_name = Faker::GreekPhilosophers.name
  contact.bio = Faker::Hipster.paragraph
  contact.save
end 

# Alternatively: contact.update(middle_name: Faker::GreekPhilosophers.name, bio: Faker::Hipster.paragraph)