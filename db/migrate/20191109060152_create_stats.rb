class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.boolean :hide_stat, default: false
      t.string :stat_string_1
      t.string :stat_string_2
      t.string :stat_string_3
      t.string :stat_string_4
      t.string :stat_string_5
      t.string :stat_svg_1
      t.string :stat_svg_2
      t.string :stat_svg_3
      t.string :stat_string_num_1
      t.string :stat_string_num_2
      t.string :stat_string_num_3

      t.timestamps
    end
  end
end
