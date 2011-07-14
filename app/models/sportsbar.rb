class Sportsbar < ActiveRecord::Base
  validates :name,    :presence => true
  validates :street,  :presence => true
  validates :city,    :presence => true
  validates :state,   :presence => true
  validates :zip,     :presence => true
  validates :email,   :presence => true
  
end
