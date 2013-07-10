# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true,
                   :uniqueness => true

  has_many :drink_inclusions, :class_name => "Component"
  has_many :drinks, :through => :drink_inclusions
end
