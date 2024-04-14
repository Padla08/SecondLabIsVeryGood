def sum_digits(num)
  num.digits.sum
end

def find_numbers(arr)
  arr.select { |num| sum_digits(num) < 10 }
end

puts "Enter numbers separated by space:"
input = gets.chomp
arr = input.split(' ').map(&:to_i)
puts find_numbers(arr)