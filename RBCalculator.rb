puts "loading..."
sleep(5)
puts "RBCalculator has started"
puts "Instructions:"
puts "1. Enter numbers and operators one at a time."
puts "2. Type '=' to evaluate the expression."
puts "3. Type 'exit' to quit."

expression = ""

loop do
  input_val = gets.chomp.strip
  
  if input_val.downcase == "exit"
    break
  elsif input_val == "="
    begin
      result = eval(expression)
      puts "Result: #{result}"
    rescue StandardError
      puts "Error in expression"
    end
    expression = ""
  else
    expression += input_val
  end
end
