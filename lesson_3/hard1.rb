# Question 1
if false
  greeting = “hello world”
end
# def meth
#   greeting = "hit here"
# end

greeting
#expect uninitialized variable error  OH SHit

# when you initialize a local variable within an if block,
# even if that if block doesn’t get executed,
# the local variable is initialized to nil.


# Question 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # {:a=>"hi there"}
# expect { a: 'hi' }



# Question 3
# a) no change: one, two, three
# b) no change: one two three
# c) tw, three, one
def mess_with_vars(one, two, three)
  one.gsub("one","two")
  two.gsub("two","three")
  three.gsub("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# Question 4
# require 'SecureRandom'

# def uuid
# SecureRandom.uuid
# end
# p uuid

# Each UUID consists of 32 hexadecimal characters,
# and is typically broken into 5 sections like this 8-4-4-4-12
def random_hex_digits(quantity)
  hex_string = ''
  quantity.times{|_| hex_string += rand(16).to_s(16)}
  hex_string
end

def uuid
  [random_hex_digits(8), random_hex_digits(4), random_hex_digits(4),
   random_hex_digits(4), random_hex_digits(12),].join('-')
end

puts uuid


# Question 5

def is_a_number?(str)
  str.to_i.to_s == str
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.length != 4
  
  dot_separated_words.each do |word|
    return false if !is_a_number?(word)
  end

  true
end

p dot_separated_ip_address?("12.43.23.4.23")

# You're not returning a false condition, and not handling the case
# that there are more or fewer than 4 components to the IP address
# (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."


