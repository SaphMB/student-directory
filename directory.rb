def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    students << {
      name: name,
      cohort: :november,
      country_of_birth: :UK,
      height: 160,
      age: 30,
      pronouns: "They, Them",
      email_address: "person@email.com",
      hobbies: "Too many to name",
      favourite_fictional_doctor: "Doctor Who"
      }
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(100)
  puts "_____________".center(100)
end

def filter(students)
  students.select {|student| student[:name][0].downcase == "d" && student[:name].length < 12 }
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(100)
  end
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student".center(100)
  else
    puts "Overall, we have #{names.count} great students".center(100)
  end
end

students = input_students
students = filter(students)

print_header
print(students)
print_footer(students)
