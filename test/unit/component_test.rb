# == Schema Information
#
# Table name: components
#
#  id            :integer          not null, primary key
#  drink_id      :integer          not null
#  ingredient_id :integer          not null
#  quantity      :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
