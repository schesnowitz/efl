class CreateCountPartials < ActiveRecord::Migration[5.2]
  def change
    create_table :count_partials do |t|
      t.string :text1
      t.string :text2
      t.string :text3
      t.string :text4
      t.string :text5
      t.string :text6
      t.integer :num1
      t.integer :num2
      t.integer :num3
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
