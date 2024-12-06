class CreateImageExamples < ActiveRecord::Migration[8.0]
  def change
    create_table :image_examples do |t|
      t.text :body

      t.timestamps
    end
  end
end
