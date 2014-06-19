class Game < ActiveRecord::Base
  has_many :frames

  def bowl(pins)
    if (current_frame.first_bowl)
      current_frame.second_bowl = pins
    else
      current_frame.first_bowl = pins
    end
  end

  def current_frame
    if frames.length == 0 || frames.last.completed?
      frames << Frame.new
    end

    frames.last
  end
end
