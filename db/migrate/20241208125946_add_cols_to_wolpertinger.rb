class AddColsToWolpertinger < ActiveRecord::Migration[8.0]
  def change
    add_column :wolpertingers, :time_asleep, :datetime
    add_column :wolpertingers, :time_awaken, :datetime
  end
end
