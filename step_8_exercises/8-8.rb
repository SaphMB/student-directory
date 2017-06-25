def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    puts "Fill in the following for each student -"
      puts "Cohort:"
      cohort = gets.chomp.downcase.to_sym
        accepted_cohort_values = [ :january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :"" ]
        until accepted_cohort_values.include? cohort
         puts "Please type a month in full or leave blank if you do not currently have a cohort"
         cohort = gets.chomp.downcase.to_sym
        end
      puts "Country of birth:"
      country_of_birth = gets[0..-2].to_sym
      puts "Pronouns:"
      pronouns = gets[0..-2].to_sym
      puts "Age:"
      age = gets[0..-2].to_sym
      puts "Hobbies:"
      hobbies = gets[0..-2]
      puts "Favourite fictional doctor:"
      favourite_fictional_doctor = gets[0..-2].to_sym

      cohort == :"" ? cohort = :unspecified : cohort

    students << {
      name: name,
      cohort: cohort,
      country_of_birth: country_of_birth,
      pronouns: pronouns,
      age: age,
      hobbies: hobbies,
      favourite_fictional_doctor: favourite_fictional_doctor
      }

    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
    name = gets[0..-2]
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
  count = 0
  while count < students.count
    puts "#{count+1}. #{students[count][:name]} (#{students[count][:cohort]} cohort) Age:#{students[count][:age]}".center(100)
    count += 1
  end
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student".center(100)
  else
    puts "Overall, we have #{names.count} great students".center(100)
  end
end

student_cohorts = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december, :unspecified ]

students = input_students
students = filter(students).sort_by {|student| student_cohorts.index(student[:cohort])}

print_header
print(students)
print_footer(students)
