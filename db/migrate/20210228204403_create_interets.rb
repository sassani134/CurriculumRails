class CreateInterets < ActiveRecord::Migration[6.0]
  def change
    create_table :interets do |t|
      t.string :title
      t.boolean :prio

      t.timestamps
    end
  end
end
