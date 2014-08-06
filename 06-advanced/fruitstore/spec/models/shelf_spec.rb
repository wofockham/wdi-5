require 'rails_helper'

RSpec.describe Shelf, :type => :model do
  it { is_expected.to have_many :fruits }
end
