class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :description, null: false
      t.integer :sequence
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
