class AddWebsiteToSportsbars < ActiveRecord::Migration
  def self.up
    add_column :sportsbars, :website, :string
  end

  def self.down
    remove_column :sportsbars, :website
  end
end
