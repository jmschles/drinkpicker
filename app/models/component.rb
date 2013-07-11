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

class Component < ActiveRecord::Base
  attr_accessible :drink_id, :ingredient_id, :quantity

  validates :ingredient, :quantity, :presence => true

  belongs_to :drink
  belongs_to :ingredient
end
