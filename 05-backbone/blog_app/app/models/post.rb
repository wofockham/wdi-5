# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :text
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
end
