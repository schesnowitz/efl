class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.boolean :hide_about, default: false
      t.string :about_string_1
      t.string :about_string_2
      t.string :about_string_3
      t.string :about_string_4
      t.string :about_string_5
      t.string :about_string_6
      t.string :about_string_7
      t.string :about_string_8
      t.string :about_string_9
      t.string :about_string_10
      t.string :about_string_11
      t.string :about_string_12
      t.string :about_string_13
      t.string :about_string_14
      t.string :about_string_15

      t.timestamps
    end
  end
end
