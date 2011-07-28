class CreateSportsbarsUsers < ActiveRecord::Migration
  def self.up
    create_table :sportsbars_users, :id => false do |t|
      t.references :sportsbar
      t.references :user
    end
  end

  def self.down
    drop_table :sportsbars_users
  end
end
