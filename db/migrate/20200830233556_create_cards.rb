class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.integer :bank, null: false

      t.timestamps
    end
  end
end
