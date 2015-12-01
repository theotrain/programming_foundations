# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.has_key?("Spot")
puts ages.include?("Spot")
puts ages.key?("Spot")
puts ages.member?("Spot")

# Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.reduce(:+) #6174

# Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if{|k,v| v > 100}
p ages


# Question 4
munsters_description = "The Munsters are creepy in a good way."
munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!
p munsters_description

# Question 5
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages

# Question 6
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
#p ages.values.sort[0]
p ages.values.min

# Question 7
advice = "Few things in life are as important as house training your pet dinosaur."
p advice =~ /Dino/ ? "its there" : "it aint there"
p advice.match("Dino")

# Question 8
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Bebe)
p flintstones.index{|name| name[0,2] == "Be"}
# found_index = nil
# flintstones.each_with_index do |name, idx|
#   if name.start_with?("Be")
#     found_index = idx
#     break
#   end
# end
# p found_index

# Question 9
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map!{|name| name[0..2]}
# flintstones.map!{|name| name[0,3]}
p flintstones

# Question 10
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map!{|name| name[0,3]}
p flintstones