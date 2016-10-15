class AddFieldToGames < ActiveRecord::Migration
  def change
    add_reference :games, :boardgame, index: true, foreign_key: true
  end
end
