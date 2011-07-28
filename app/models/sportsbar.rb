class Sportsbar < ActiveRecord::Base
  validates :name,    :presence => true
  validates :street,  :presence => true
  validates :city,    :presence => true
  validates :state,   :presence => true
  validates :zip,     :presence => true
  validates :email,   :presence => true
  
  has_and_belongs_to_many :games 
  
  has_and_belongs_to_many :users
  
end
