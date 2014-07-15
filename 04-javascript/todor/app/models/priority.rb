# == Schema Information
#
# Table name: priorities
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  color   :string(255)      default("#ffffff")
#  user_id :integer
#

class Priority < ActiveRecord::Base
end
