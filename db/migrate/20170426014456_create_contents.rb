class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.references :course
      t.string :unit_One
      t.string :unit_Two
      t.string :unit_Three
      t.string :unit_Four
      t.string :unit_Five

      t.timestamps
    end
  end
end
