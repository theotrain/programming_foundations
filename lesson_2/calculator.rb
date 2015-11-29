puts "enter first number"
n1 = gets.chomp#.to_i
puts "enter second number"
n2 = gets.chomp#.to_i
puts "enter operation (* / + -)"
operation = gets.chomp
puts "#{n1} #{operation} #{n2} = #{"%g" %  (eval(n1+operation+n2.to_f.to_s))}"
