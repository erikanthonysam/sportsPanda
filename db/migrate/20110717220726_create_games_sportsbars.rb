class CreateGamesSportsbars < ActiveRecord::Migration
  def self.up
    create_table :games_sportsbars, :id => false do |t|
      t.references :game
      t.references :sportsbar
    end
  end

  def self.down
    drop_table :games_sportsbar
  end
end
