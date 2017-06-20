students = [
{name: "Dr. Hannibal Lecter", cohort: :novemeber},
{name: "Darth Vader", cohort: :novemeber},
{name: "Nurse Ratched", cohort: :novemeber},
{name: "Michael Corleone", cohort: :novemeber},
{name: "Alex DeLarge", cohort: :novemeber},
{name: "The Wicked Witch of the West", cohort: :novemeber},
{name: "Terminator", cohort: :novemeber},
{name: "The Joker", cohort: :novemeber},
{name: "Freddy Krueger", cohort: :novemeber},
{name: "Joffrey Baratheon", cohort: :novemeber},
{name: "Norman Bates", cohort: :novemeber}
]

def print_header
  puts "The students of Villains Academy"
  puts "_____________"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
