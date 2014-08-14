class String
  def self.add_new_method(name)
    define_method(name) do
      puts "This is a method called #{name}"
    end
  end

  def self.add_another_method(name, &block)
    define_method(name) do |*args|
      puts "This a method called #{name}"
      block.call(*args)
    end
  end
end

String.add_new_method('thor')
"some string".thor

String.add_another_method('addition') do |num1, num2|
  puts "Block is being run"
  puts num1 + num2
end

"some other string".addition 2, 8