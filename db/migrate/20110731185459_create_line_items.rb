class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
