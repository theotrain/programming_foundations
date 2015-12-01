# Question 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# expect [1,2,2,3], use uniq! to modify array

# Question 1
# Describe the difference between ! and ? in Ruby.
# And explain what would happen in the following scenarios:
# 1. what is != and where should you use it?
# 'not equal to' comparison operator, like: if (life != 0) keep living

# 2. put ! before something, like !user_name
# !user_name ("not user name") flips the value of a boolean user_name

# 3. put ! after something, like words.uniq!
# methods are names with ! to warn that they are destructive to the caller

# 4. put ? before something
# ternary operator?  all i can think of.

# 5. put ? after something
# conventionally used for method names that return a boolean value
# like: baby_breathing?

# 6. put !! before something, like !!user_name
# i have no idea.

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

# Question 4
numbers = [1, 2, 3, 4, 1, 5]
numbers.delete_at(1)
numbers.delete(1)
p numbers
# .delete_at() removes the item at the provided index
# .delete() removes the item provided as an argument (all instances)

# Question 5
# Programmatically determine if 42 lies between 10 and 100.
if (10..100).include?(42)
  puts "it's up in there"
end

# Question 6
famous_words = "seven years ago..."
famous_words = "Four score and " + famous_words
puts famous_words

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
puts famous_words

# Question 7
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

# how_deep = "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
p eval(how_deep)

# expect: 42

# Question 8
flintstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten!
p flintstones

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# flintstones = [flintstones.keys[2], flintstones.values[2]]
flintstones = flintstones.assoc("Barney")
p flintstones

# Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, idx|
  flintstones_hash[name] = idx
end
p flintstones_hash