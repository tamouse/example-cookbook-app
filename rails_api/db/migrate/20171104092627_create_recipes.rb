class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :description
      t.string :notes
      t.references :user

      t.timestamps
    end
  end
end
