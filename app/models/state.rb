class State < ActiveRecord::Base
  has_many :cities
  belongs_to :country
  has_one  :wiki_link, as: :linkable 
  
  def area
    self.cities.sum(:area)
  end

  def literacy
    self.cities.average(:literacy)
  end

  def population
    self.cities.sum(:population)
  end
end
