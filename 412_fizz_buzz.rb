# Question

# Given an integer n, return a string array answer (1-indexed) where:

# answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
# answer[i] == "Fizz" if i is divisible by 3.
# answer[i] == "Buzz" if i is divisible by 5.
# answer[i] == i (as a string) if none of the above conditions are true.

# Example:
# Input: n = 15
# Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]


# SOLUTION ONE

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  fizz_buzz_array = []
  (1..n).each do |i|
    string =
      if (i % 3).zero? && i % 5 != 0
        'Fizz'
      elsif (i % 5).zero? && i % 3 != 0
        'Buzz'
      elsif (i % 3).zero? && (i % 5).zero?
        'FizzBuzz'
      else
        i.to_s
      end
    fizz_buzz_array << string
  end
  fizz_buzz_array
end

p fizz_buzz(50)



# SOLUTION TWO

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  fizz_buzz_array = []
  for i in 1..n do
    if i % 3 == 0 and i % 5 != 0
      string = "Fizz"
    elsif i % 5 == 0 and i % 3 != 0
      string =  "Buzz"
    elsif i % 3 == 0 and i % 5 == 0
      string =  "FizzBuzz"
    else
      string = i.to_s
    end
    fizz_buzz_array << string
  end
  return fizz_buzz_array
end

p fizz_buzz(50)

# SOLUTION TWO HAD A LOWER RUNTIME THAN SOLUTION ONE
