# == Schema Information
#
# Table name: drinks
#
#  id             :integer          not null, primary key
#  name           :string(255)      not null
#  instructions   :string(255)
#  link           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  filepicker_url :string(255)
#

require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
