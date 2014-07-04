class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :played
      t.integer :buyin
      t.integer :buyout

      t.timestamps
    end
  end
end
