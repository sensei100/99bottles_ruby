class Bottles
  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)

    "#{bottle_number.quantity.capitalize} #{bottle_number.beverage_container} of beer on the wall, " +
    "#{bottle_number.quantity} #{bottle_number.beverage_container} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{next_bottle_number.quantity} #{next_bottle_number.beverage_container} of beer on the wall.\n"
  end

  def verses(num1, num2)
    num1.downto(num2).map { |n| verse(n) }.join("\n")
  end

  def song()
    verses(99, 0)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def it_or_one
    if number == 1
      "it"
    else
      "one"
    end
  end

  def beverage_container
    if number == 1
      "bottle"
    elsif number == 6
      "six-pack"
    else
      "bottles"
    end
  end

  def quantity
    if number == 0
      "no more"
    elsif number == 6
      "1"
    else
      number.to_s
    end
  end

  def successor 
    if number == 0
      99
    else
      number - 1 
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{it_or_one} down and pass it around" 
    end
  end
end