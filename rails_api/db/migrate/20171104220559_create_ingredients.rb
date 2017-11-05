class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe, foreign_key: true
      t.string :name, null: false
      t.decimal :quantity
      t.references :measure, foreign_key: true
      t.text :prep_notes

      t.timestamps
    end
  end
end
