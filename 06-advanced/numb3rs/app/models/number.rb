class Number
  def self.bin2dec(binary)
    result = 0
    binary.reverse.split('').each_with_index do |bit, power|
      result += bit.to_i * (2 ** power)
    end
    result
    # binary.reverse.split('').each_with_index.map{|bit, power| bit.to_i * 2**power}.reduce(:+)
  end
end
