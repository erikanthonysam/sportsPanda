class Game < ActiveRecord::Base
  validates :name,   :presence => true
  validates :sport,  :presence => true
  validates :date,   :presence => true
    
  has_and_belongs_to_many :users
  
  has_many :line_items, :dependent => :destroy
  
end
