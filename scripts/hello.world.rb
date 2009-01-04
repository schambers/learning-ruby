
# Dynamic Calculator
def calculate(firstNumber, operator, secondNumber)
	string = firstNumber.to_s + operator + secondNumber.to_s
	eval(string)
end

puts calculate(3, "+", 2)

