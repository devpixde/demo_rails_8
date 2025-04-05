class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.boolean :is_climber

      t.timestamps
    end
  end
end
