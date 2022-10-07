#intro: assignments, scripting, oop etc

name = "Ruby"
birth_year = 1995
flag = false
str = 'string with single quotes'

name_birthdate = "#{name} was born on #{birth_year}"

puts name_birthdate
puts '#{name} was born on #{birth_year}'


puts name
puts birth_year
puts flag
puts str

puts 'Welcome to #{name}'
puts "Welcome to #{name}"
puts "#{name} was born on #{birth_year}!"

now = Time.now
puts "Time now is #{now}"
age = now.year - birth_year
puts "#{name} is #{age} years old!"

require 'date'  # like the Java import
SECONDS_IN_MIN = 60 #constants
SECONDS_IN_HOUR = 60 * SECONDS_IN_MIN
SECONDS_IN_DAY = 24 * SECONDS_IN_HOUR
SECONDS_IN_YEAR = 365 * SECONDS_IN_DAY
birth_date = DateTime.new 1995, 12, 21 # try without parenthesis
exact_age = (now - birth_date.to_time) / SECONDS_IN_YEAR # difference in seconds
puts "Exact age of #{name} is #{exact_age}!"

puts "\n"

puts "class of #{age} is #{age.class}"
puts "class of #{exact_age} is #{exact_age.class}"

if age.even? then
  puts "even age"
else
  puts "odd age"
end

x = 'awasdnil'
# or equivalently
puts age.even? ? "even age" : "odd age"
puts "#{name} is matured" if age>20

if x then
  puts "not printed"
end


n=5
# loops
puts "\n"
n.times { |i| puts "inside loop #{i}" }
3.times {puts "inside loop"}
10.upto(20) {|i| puts "inside loop with index #{i}"}

puts "\n"

klass = nil.class #Fixnum for 22
begin
  puts klass;
  klass = klass.superclass
end while klass != nil

