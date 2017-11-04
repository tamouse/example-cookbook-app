class CreateMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :measures do |t|
      t.string :name, null: false
      t.string :abbrev
    end
  end
end
