# Question 1
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 2
flintstones << "Dino"
p flintstones

# Question 3
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push "Dino", "Hoppy"
p flintstones

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index("house"))
p advice

# Question 5
statement = "The Flintstones Rock!"
p statement.count('t')
#statement.scan('t').count

# Question 6
title = "Flintstone Family Members"
p title.center(40)
# side_space = (40 - title.length)/2
# side_space.times{|_| title.prepend " "}