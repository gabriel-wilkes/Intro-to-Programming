def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num != 0.0
end

prompt("Welcome to the Mortgage / Car Loan Calculator!")

loop do # main loop
  loan = ''
  loop do
    prompt("What's the loan amount? (omit currency sign and commas)")
    loan = Kernel.gets().chomp().to_f()

    if valid_number?(loan)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  apr = ''
  loop do
    prompt("What's the APR? Enter as a percentage, %5.5 is entered as 5.5")
    apr = Kernel.gets().chomp().to_f()

    if valid_number?(apr)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt("What is the loan duration in years?")

  duration = ''
  loop do
    duration = Kernel.gets().chomp().to_f()

    if valid_number?(duration)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  prompt("Calculating your loan...")

  months = duration * 12
  monthly_apr = apr / 1200
  payment = loan * (monthly_apr / (1 - (1 + monthly_apr)** -months))

  prompt("Your monthly payment will be $#{format('%02.2f', payment)}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the mortgage / car loan calculator. Good bye!")
