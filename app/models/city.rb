class City < ActiveRecord::Base
  has_one  :wiki_link, as: :linkable 
  belongs_to :state

  validates_presence_of :name
  validates_presence_of :state_id
end