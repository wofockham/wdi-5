require 'rails_helper'

RSpec.describe Fruit, :type => :model do
  describe "An apple" do
    before do
      @apple = Fruit.new
    end

    it "should not be squishy" do
      expect(@apple.squishy?).to eq(false)
    end
  end

  describe "A pear" do
    before do
      @pear = Fruit.new
    end

    it "should be kinda squishy" do
     expect(@pear.squishy?).to eq(true)
    end
  end
end
