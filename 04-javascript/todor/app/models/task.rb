# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  duedate     :date
#  completed   :boolean          default(FALSE)
#  user_id     :integer
#  priority_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  address     :text
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#

class Task < ActiveRecord::Base
  before_save :geocode

  belongs_to :user
  belongs_to :priority

  private
  def geocode
    result = Geocoder.search(self.address).first
    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end
