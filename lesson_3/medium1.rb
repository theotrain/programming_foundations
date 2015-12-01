# Question 1
10.times{|num| puts " " * num + "The Flintstones Rock!"}

# Question 2
statement = "The Flintstones Rock"
hash = {}
statement.chars.each do |char|
  hash[char] = statement.count(char) unless hash.key?(char)
end
p hash

# above solution accepts any charater, not just letters.  take 2:
statement = "The Flintstones Rock !*^$)("
hash = {}
statement.chars.each do |char|
  if char.match(/[A-Za-z]/) && !hash.key?(char)
    hash[char] = statement.count(char)
  end
end
p hash

# Question 3
# puts "the value of 40 + 2 is " + (40 + 2) # produces error
# cant add Fixnum to string without explicit conversion
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Question 4
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# expected output 1,3
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# expected output 1, 2

# Question 5
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors 50
p factors 0
p factors -10
# (number % dividend == 0) finds out if 2 nums are evenly divisible (no remainder)
# returns array of factors (implicit return)

# Question 6
# << modifies the buffer argument
# + operation doesnt

# Question 7
limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit) #pass in limit to make it available
puts "result is #{result}"

# Question 8
def titleize (string)
  string.split.map(&:capitalize).join(' ')
end

puts titleize("i DREAM of Genie with the liGHT brown hair")

# Question 9
munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def age_group(age)
  case age
  when 0..17
    return 'kid'
  when 18..64
    return 'adult'
  else
    return 'senior'
  end
end

munsters.each do |name, values|
  values['age_group'] = age_group(values['age']) 
end
puts munsters
# "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" }
# Note: a kid is in the age range 0 - 17,
# an adult is in the range 18 - 64 and
# a senior is aged 65+.
