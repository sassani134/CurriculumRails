class CreateCertificats < ActiveRecord::Migration[6.0]
  def change
    create_table :certificats do |t|
      t.string :title
      t.date :debut
      t.date :fin
      t.boolean :wip
      t.boolean :prio

      t.timestamps
    end
  end
end
