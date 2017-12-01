# require 'pry'

class CreditCheck2

  def isolate_and_reverse_digits(card_number)
    card_number = card_number.to_s.split("").reverse
  end

  def double_every_other_digit(card_number)
    card_number.each_with_index.map do |digit, index|
        if index.odd?
        digit.to_i * 2
      else digit.to_i
        end
      end
    end

  def condense_double_digits(card_number)
    card_number.each_with_index.map do |digit, index|
      if digit > 9
         digit - 9
      else digit
      end
    end
  end

  def sum_of_all_digits(card_number)
    sum = 0
    card_number.each do |digit|
      sum += digit
    end
    sum
  end

  def card_validity(card_number)
    if card_number % 10 == 0
      puts "The number is valid!"
    else puts "The number is invalid!"
    end
  end

end
