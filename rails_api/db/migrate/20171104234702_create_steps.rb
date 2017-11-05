class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.references :recipe, foreign_key: true
      t.text :description
      t.integer :sequence_number

      t.timestamps
    end
  end
end
