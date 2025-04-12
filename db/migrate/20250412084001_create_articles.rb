class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.text :body
      t.integer :status

      t.timestamps
    end
  end
end
