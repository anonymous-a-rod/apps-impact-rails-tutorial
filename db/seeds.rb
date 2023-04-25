Student.destroy_all

student = Student.create(
  first_name: 'Aaron',
  last_name: 'Venema',
  email: 'aaron@example.com'
)

20.times do |i|
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Lname #{i+1}",
    email: "#{i}@gmail.com"
  )

end

Teacher.destroy_all

20.times do |i|
  Teacher.create(
    first_name: "Teacher #{i}",
    last_name: "Lname #{i}",
    biography: "blah blah #{i}"
  )
end
