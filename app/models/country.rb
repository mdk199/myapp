class Country < ActiveRecord::Base
  has_many :states
  has_one  :currency
  has_one  :time_zone
  has_one  :wiki_link, as: :linkable 

  def area
    area = 0
    self.states.each do|state|
      area += state.area
    end
    return area
  end

  def literacy
    sum = 0
    self.states.each do|state|
      sum += state.literacy
    end
    return (sum/self.states.count)
  end

  def population
    population = 0
    self.states.each do|state|
      population += state.population
    end
    return population
  end
end
