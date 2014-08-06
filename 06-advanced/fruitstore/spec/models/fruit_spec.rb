# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  type       :string(255)
#

require 'rails_helper'

RSpec.describe Fruit, :type => :model do
  describe "An apple" do
    before do
      @apple = Apple.create(:name => 'Fuji')
    end

    it "should not be squishy" do
      expect(@apple.squishy?).to eq(false)
    end

    it "should remember what class it is using Single Table Inheritance (STI)" do
      apple = Fruit.find(@apple.id)
      expect(apple.class).to eq(Apple)
      expect(apple).to eq(@apple)
      expect(apple.is_a?(Fruit)).to eq(true)
      expect(apple.class.ancestors).to include(Fruit)
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create(:name => 'Prickly')
    end

    it "should be kinda squishy" do
     expect(@pear.squishy?).to eq(true)
    end

    it "should remember what class it is using Single Table Inheritance (STI)" do
      pear = Fruit.find(@pear.id)
      expect(pear.class).to eq(Pear)
      expect(pear).to eq(@pear)
      expect(pear.is_a?(Fruit)).to eq(true)
      expect(pear.class.ancestors).to include(Fruit)
    end
  end
end










