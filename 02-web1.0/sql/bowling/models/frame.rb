class Frame < ActiveRecord::Base
  belongs_to :game

  def score
    first_bowl.to_i + second_bowl.to_i
  end

  def completed?
    !! (score == 10 || (first_bowl && second_bowl))
  end
end
