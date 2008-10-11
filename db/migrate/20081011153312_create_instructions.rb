class CreateInstructions < ActiveRecord::Migration
  def self.up
    create_table :instructions do |t|
      t.integer :step
      t.text :description
      t.integer :recipe_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instructions
  end
end
