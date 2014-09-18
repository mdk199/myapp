class City < ActiveRecord::Base
  has_one  :wiki_link, as: :linkable 
  belongs_to :state
end