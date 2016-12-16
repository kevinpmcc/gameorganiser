class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|

      t.timestamps null: false
    end
  end
end
