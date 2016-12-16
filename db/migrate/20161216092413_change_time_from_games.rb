class ChangeTimeFromGames < ActiveRecord::Migration
  def change
    change_column :games, :time, :time
  end
end
