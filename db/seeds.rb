
student = Student.create(
  first_name: 'Aaron',
  last_name: 'Venema',
  email: 'aaron@example.com'
)

20.times do |i|
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Lname #{i+1}",
    email: "{i}@gmail.com"
  )

end
