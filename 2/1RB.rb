def roman_to_int(s)
    roman_values = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000
    }

    result = 0
    prev_value = 0

    s.reverse.each_char do |c|
        current_value = roman_values[c]
        if current_value < prev_value
            result -= current_value
        else
            result += current_value
        end
        prev_value = current_value
    end

    result
end

puts "Enter a Roman numeral:"
roman_number = gets.chomp
arabic_number = roman_to_int(roman_number)
puts "The equivalent Arabic numeral is: #{arabic_number}"