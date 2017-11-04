class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :recipe, foreign_key: true

      t.string :quantity
      t.references :measure, foreign_key: true
      t.string :prep_notes

      t.timestamps
    end
  end
end
