class Frame < ActiveRecord::Base
  belongs_to :game

  def score
    first_bowl.to_i + second_bowl.to_i
  end

  def pins_remaining
    10 - (first_bowl.to_i) - (second_bowl.to_i)
  end

  def completed?
    !! (score == 10 || (first_bowl && second_bowl))
  end

  def strike?
    10 == first_bowl.to_i
  end

  def spare?
    second_bowl && (10 == first_bowl.to_i + second_bowl.to_i)
  end
end
