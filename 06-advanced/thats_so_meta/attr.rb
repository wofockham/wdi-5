class Example
  self.attr_reader :name, :age, :height
end

def attr_reader_diy(*args)
  args.each do
    define_method("#{arg}") do
      get_instance_variable(arg)
    end
  end
end

def attr_writer_diy(*args)
  args.each do |arg|
    define_method("#{arg}=") do |val|
      set_instance_variable(arg, val)
    end
  end
end
