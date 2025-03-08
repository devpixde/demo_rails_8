class AddNameToWolpertinger < ActiveRecord::Migration[8.0]
  def change
    add_column :wolpertingers, :name, :string
  end
end
