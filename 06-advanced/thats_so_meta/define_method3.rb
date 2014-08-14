class Array
  def self.add_new_method(method_name, &block)
    define_method(method_name) do |*args|
      puts "You created a method called #{method_name} and you are in it."
      block.call(self, *args)
    end
  end
end

Array.add_new_method('arkham_asylum') do |the_array_class, prefix|
  the_array_class.each do |criminal|
    puts "#{prefix}: #{criminal}"
  end
end

%w{Joker Harley Freeze Bane}.arkham_asylum ('Escapee')
