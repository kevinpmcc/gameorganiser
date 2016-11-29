class AlterColumnGamesTime < ActiveRecord::Migration

  def up
    remove_column :games, :time
    add_column :games, :time, :datetime
  end

  def down
    remove_column :games, :time
    add_column :games, :time, :datetime
  end
end
