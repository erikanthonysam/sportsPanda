class CreateSportsbars < ActiveRecord::Migration
  def self.up
    create_table :sportsbars do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :sportsbars
  end
end
