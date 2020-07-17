puts "Reseting data in students database..."
Student.destroy_all

puts "Repopulating students to database..."
Student.create(first_name: "First", last_name: "Last")

puts "Seeding completed."