class RemoveTimeFromAvailableTimes < ActiveRecord::Migration
  def change
    remove_column :available_times, :time, :time
  end
end
