# Question 1
munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}
# Figure out the total age of just the male members of the family.
total_age = 0
munsters.select.each do |k,v|
  total_age += v['age'] if v['gender'] == 'male'
end
p total_age


# Question 2
munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

# Question 3
# make destructive methods clear
def add_stuff(a_string_param)
  a_string_param += "rutabaga"
end

def add_stuff!(an_array_param)
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
add_stuff(my_string)
add_stuff!(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 4
sentence = "Humpty Dumpty sat on a wall."
# p sentence.split.reverse.join(' ')

words = sentence.split(/\W/)
p words
# words.reverse!
# backwards_sentence = words.join(' ') + '.'
# p backwards_sentence

# Question 5
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
# expected output: 34 


# Question 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash = {something: "new"}
end

older_munsters = mess_with_demographics(munsters)
p munsters


# Question 7
# expect: puts "paper"


# Question 8
# expect: it doesnt print anything, but bar(foo) returns "no"
