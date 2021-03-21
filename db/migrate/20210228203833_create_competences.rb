class CreateCompetences < ActiveRecord::Migration[6.0]
  def change
    create_table :competences do |t|
      t.string :title
      t.integer :point
      t.boolean :prio

      t.timestamps
    end
  end
end
