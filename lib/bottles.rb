class Bottles
  def verse(number)
    "#{bottle_number(number).capitalize} #{pluralize_bottles(number)} of beer on the wall, " +
    "#{bottle_number(number)} #{pluralize_bottles(number)} of beer.\n" +
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
      "99 #{pluralize_bottles(number - 1)} of beer on the wall.\n"
    else
      "#{bottle_number(number - 1)} #{pluralize_bottles(number - 1)} of beer on the wall.\n"
    end
  end

  def it_or_one(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def pluralize_bottles(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def bottle_number(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end
end