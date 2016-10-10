class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :time

      t.timestamps null: false
    end
  end
end
