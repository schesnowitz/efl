class CreateHeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :headers do |t|
      t.boolean :hide_header, default: false
      t.string :header_string_1
      t.string :header_string_2
      t.string :header_string_3
      t.string :header_string_4

      t.timestamps
    end
  end
end
