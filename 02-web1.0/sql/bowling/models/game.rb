class Game < ActiveRecord::Base
  has_many :frames

  def score
    sum = 0
    frames.each do |f|
      sum += f.score
    end

    sum
  end

  def bowl(pins)
    self.save unless self.id

    current = current_frame

    if frames.length >= 10 && current.completed?
      raise "Game over"
    end

    if pins > (10 - current.first_bowl.to_i)
      raise "Too many pins"
    end

    if (current.first_bowl)
      current.second_bowl = pins
    else
      current.first_bowl = pins
    end
    current.save
  end

  def current_frame
    if frames.length == 0 || frames.last.completed?
      frames << Frame.new
    end

    frames.last
  end
end
