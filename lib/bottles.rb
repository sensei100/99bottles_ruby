class Bottles
  def verse(number)
    "#{bottle_number(number).capitalize} #{beverage_container(number)} of beer on the wall, " +
    "#{bottle_number(number)} #{beverage_container(number)} of beer.\n" +
    penultimate_line(number) +
    last_line(number)
  end

  def verses(num1, num2)
    num1.downto(num2).map { |n| verse(n) }.join("\n")
  end

  def song()
    verses(99, 0)
  end

  def penultimate_line(number)
    if number == 0
      "Go to the store and buy some more, " 
    else
      "Take #{it_or_one(number)} down and pass it around, " 
    end  
  end

  def last_line(number)
    if number == 0
      "99 #{beverage_container(number - 1)} of beer on the wall.\n"
    else
      "#{bottle_number(number - 1)} #{beverage_container(number - 1)} of beer on the wall.\n"
    end
  end

  def it_or_one(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def beverage_container(number)
    if number == 1
      "bottle"
    elsif number == 6
      "six-pack"
    else
      "bottles"
    end
  end

  def bottle_number(number)
    if number == 0
      "no more"
    elsif number == 6
      "1"
    else
      number.to_s
    end
  end
end