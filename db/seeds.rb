5.times do
  user = User.create!(
    email:        Faker::Internet.email,
    password:     Faker::Internet.password,
    confirmed_at: Time.now
  )
end
users = User.all

15.times do
  student = Student.create!(
    name:             Faker::Name.first_name,
    classroom:        Faker::Name.first_name,
  )
end
students = Student.all

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Student.count} topics created."
