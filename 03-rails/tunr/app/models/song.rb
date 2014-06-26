# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :decimal(, )
#  album_id   :integer
#  artist_id  :integer
#  file       :string(255)
#  artwork    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
end
