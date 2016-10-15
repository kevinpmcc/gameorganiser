class RemoveTitleFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :title, :string
  end
end
