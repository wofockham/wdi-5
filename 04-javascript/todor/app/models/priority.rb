# == Schema Information
#
# Table name: priorities
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  color   :string(255)      default("#ffffff")
#  user_id :integer
#  urgency :integer          default(1)
#

class Priority < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
end
