class CreateFooters < ActiveRecord::Migration[5.2]
  def change
    create_table :footers do |t|
      t.boolean :hide_footer, default: false
      t.string :footer_string_1
      t.string :footer_string_2
      t.string :footer_string_3
      t.string :footer_string_4
      t.string :footer_string_5
      
      t.integer :footer_font_awesome
      t.timestamps
    end
  end
end
