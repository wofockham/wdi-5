class Multiplier

  # define_method(:times_2) do |val|
  #   val * 2
  # end

  def self.create_multiplier(n)
    define_method("times_#{n}") do |val|
      val * n
    end
  end

  100.times {|n| create_multiplier(n)}
end

p Multiplier.new.times_99(4)