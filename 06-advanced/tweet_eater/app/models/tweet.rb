# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  post       :text
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Tweet < ActiveRecord::Base
  belongs_to :user
end
