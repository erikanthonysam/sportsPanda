class Game < ActiveRecord::Base
  validates :name,   :presence => true
  validates :sport,  :presence => true
  validates :date,   :presence => true
    
  has_many :users, :through => :line_items
  
  has_many :line_items, :dependent => :destroy
  
end
