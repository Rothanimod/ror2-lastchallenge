# == Schema Information
#
# Table name: pins
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string
#

class Pin < ActiveRecord::Base
  belongs_to :user
end
