class AddColumnAvailTimeToAvailableTimes < ActiveRecord::Migration
  def change
    add_column :available_times, :avail_time, :string
  end
end
