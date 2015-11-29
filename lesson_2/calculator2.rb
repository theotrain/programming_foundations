def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

n1 = ''
n2 = ''
prompt 'Welcome to calculator'
loop do # main loop
  loop do
    prompt 'enter first number'
    n1 = gets.chomp
    if valid_number?(n1)
      break
    else
      prompt 'i dont like the looks of that so-called number'
    end
  end

  loop do
    prompt 'enter second number'
    n2 = gets.chomp
    if valid_number?(n2)
      break
    else
      prompt 'i dont like the looks of that so-called number'
    end
  end

  prompt 'enter operation (* / + -)'
  operation = gets.chomp
  prompt "#{n1} #{operation} #{n2} = #{"%g" % (eval(n1 + operation + n2.to_f.to_s))}"
  prompt 'want to calculate some more? (y/n)'
  break unless gets.chomp().downcase[0] == 'y'
end
