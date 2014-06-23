class PagesController < ApplicationController
  def home
  end

  def numbers
    @amount = 234.0123456
    @large_number = 2123434983343948
    @phone = 2125551212
  end

  def text
    @numbers = (1..20).to_a
    @person_count = 1
    @people_count = 2
    @story = "A long time ago in a galaxy far far away"
  end

  def assets
  end

  def url
  end
end
