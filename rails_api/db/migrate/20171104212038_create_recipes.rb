class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
