class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.string :title
      t.string :soustitle
      t.text :body
      t.string :lieux
      t.date :debut
      t.date :fin
      t.boolean :wip
      t.string :tache1
      t.string :tache2
      t.string :tache3
      t.boolean :prio

      t.timestamps
    end
  end
end
