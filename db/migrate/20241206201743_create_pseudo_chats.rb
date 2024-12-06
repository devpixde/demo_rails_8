class CreatePseudoChats < ActiveRecord::Migration[8.0]
  def change
    create_table :pseudo_chats do |t|
      t.string :message

      t.timestamps
    end
  end
end
