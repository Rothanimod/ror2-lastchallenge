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

require 'test_helper'

class PinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
