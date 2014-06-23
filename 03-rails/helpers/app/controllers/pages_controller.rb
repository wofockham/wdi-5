class PagesController < ApplicationController
  def home
  end

  def numbers
    @amount = 234.0123456
    @large_number = 23912834198
    @phone = 2125551212
  end

  def text
  end

  def assets
  end

  def url
  end
end
