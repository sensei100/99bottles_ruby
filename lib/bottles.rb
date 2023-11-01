class Bottles
  def verse(number)
    "#{bottle_number(number)} of beer on the wall, " +
    verse_ending(number)
  end

  def verses(num1, num2)
    num1.downto(num2).map { |n|
      verse(n)
    }.join("\n")
  end

  def song()
  end

  def verse_ending(number)
    case number
    when 2
      "#{bottle_number(number)} of beer.\n" +
      "Take #{pronouns(number)} down and pass it around, " +
      "#{number - 1} bottle of beer on the wall.\n"
    when 1
      "#{bottle_number(number)} of beer.\n" +
      "Take #{pronouns(number)} down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 0
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    else
      "#{bottle_number(number)} of beer.\n" +
      "Take #{pronouns(number)} down and pass it around, " +
      "#{number - 1} bottles of beer on the wall.\n"
    end
  end

  def pronouns(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def bottle_number(number)
    case number
    when 1
      "#{number} bottle"
    when 0
      "No more bottles"
    else
      "#{number} bottles"
    end
  end
end