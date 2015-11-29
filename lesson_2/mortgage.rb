def valid_integer?(amount)
  amount.to_i.to_s == amount
end

def valid_float?(amount)
  times100 = (amount * 100).to_i.to_s
  times100 != "0" && is_valid_integer?(times100)
end

loan_amount = 0
apr = 0
loan_years = 0

p 'Mortgage Calculator'

loop do
  p 'Please enter the loan amount'
  loan_amount = gets.chomp
  if valid_integer?(loan_amount)
    break
  else
    p 'INVALID: please enter a whole number'
  end
end

loop do
  p 'Please enter the Annual Percentage Rate (APR)  (ie: 4.6)'
  apr = gets.chomp.to_f
  if valid_float?(apr)
    break
  else
    p 'INVALID: requires a number with at most 2 digits after the decimal'
  end
end

loop do
  p 'Please enter the loan duration in years'
  loan_years = gets.chomp
  if valid_integer?(loan_years)
    break
  else
    p 'INVALID: please enter a whole number'
  end
end

monthly_rate = apr / 100 / 12.0
loan_months = loan_years.to_i * 12
loan_amount = loan_amount.to_i

monthly_payment = (loan_amount * (monthly_rate * ((1 + monthly_rate)**loan_months))) /
                  (((1 + monthly_rate)**loan_months) - 1)

puts "your monthly payment is: $#{monthly_payment.round}"
