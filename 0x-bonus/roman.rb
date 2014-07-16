class Fixnum
  def to_roman
    # Map decimal values to the allowed Roman symbols.
    symbol = {
      1 => "I",
      4 => "IV",
      5 => "V",
      9 => "IX",
      10 => "X",
      40 => "XL",
      50 => "L",
      90 => "XL",
      100 => "C",
      400 => "CD",
      500 => "D",
      1000 => "M"
    }

    # Obtain the possible values in descending order
    values = symbol.keys.sort { |a, b| b <=> a } # symbols.keys.sort.reverse

    remaining = self # A copy of our input number on which we'll operate.
    pieces = [] # The individual pieces of our final Roman numeral go here.

    # Repeatedly divide our input to find which Roman numerals "go into" it.
    values.each do |value|
      if (remaining / value > 0)  # This is a match!
        pieces.push symbol[value] # Store the symbol.
        remaining -= value        # Remove that "part" of the input.
        redo                      # Try again, in case it appears multiple times.
      end
    end

    pieces.join                   # Return our final string.
  end
end

1001.downto(1) do |i|
  p i.to_roman
end
