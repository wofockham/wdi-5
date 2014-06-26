# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cover_art  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
end
