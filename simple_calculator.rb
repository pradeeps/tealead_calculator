puts "Welcome to TeaLeaf Calculator App"
puts "-------------------------"

loop do

  puts "Please enter first number"
  num1 = gets.chomp
  puts "Please enter second number"
  num2 = gets.chomp

  operation_hash = {"1" => "Addition", "2" => "Subtraction", "3" => "Multiplication", "4" => "Division"}
  puts "Please select from one of the operations below"
  operation_hash.each do |k,v|
    puts "#{k}.#{v}"
  end

  operation_input  = gets.chomp
  while !operation_hash.has_key?(operation_input)
    puts "Invalid operation, please enter a valid option "
    operation_input  = gets.chomp
  end

  case operation_input
    when '1'
      result = num1.to_i + num2.to_i
    when '2'
      result = num1.to_i - num2.to_i
    when '3'
      result = num1.to_i * num2.to_i
    when '4'
      result = num1.to_f / num2.to_f
  end
      puts "Result of #{operation_hash[operation_input]} of #{num1} and #{num2} is #{result} \n"

      puts "Would you like to perform an other operation? (Y/N)"
      do_this_again = gets.chomp.capitalize
      break unless do_this_again == 'Y'
end


































