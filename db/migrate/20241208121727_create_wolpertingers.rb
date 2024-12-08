class CreateWolpertingers < ActiveRecord::Migration[8.0]
  def change
    create_table :wolpertingers do |t|
      t.string :state
      t.boolean :is_walking
      t.string :color
      t.integer :age
      t.string :mood

      t.timestamps
    end
  end
end
