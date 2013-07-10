# == Schema Information
#
# Table name: drinks
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  instructions :string(255)
#  link         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Drink < ActiveRecord::Base
  attr_accessible :name, :instructions, :link

  validates :name, :presence => true,
                   :uniqueness => true

  has_many :components
  has_many :ingredients, :through => :components

  def self.random
    Drink.find(:first, :offset => rand(Drink.count))
  end
end
