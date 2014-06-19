class Game < ActiveRecord::Base
  has_many :frames

  def bowl(pins)
    self.save unless self.id

    current = current_frame

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
