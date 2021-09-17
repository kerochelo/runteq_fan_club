class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :title, null: false
      t.text :why, null: false
      t.text :why2
      t.text :url, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
