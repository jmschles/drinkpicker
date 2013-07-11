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

class Drink < ActiveRecord::Base
  attr_accessible :name, :instructions, :link, :components_attributes, :filepicker_url

  validates :name, :presence => true,
                   :uniqueness => true

  has_many :components, :dependent => :destroy
  has_many :ingredients, :through => :components

  accepts_nested_attributes_for :components, :reject_if => :all_blank

  def self.random
    Drink.find(:first, :offset => rand(Drink.count))
  end
end
