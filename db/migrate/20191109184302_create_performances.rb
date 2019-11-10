class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.boolean :hide_performance, default: false
      t.string :performance_string_1
      t.string :performance_string_2
      t.string :performance_string_3
      t.string :performance_string_4
      t.string :performance_string_5
      t.string :performance_string_6
      t.string :performance_string_7
      t.string :performance_string_8
      t.string :performance_string_9
      t.string :performance_string_10
      t.string :performance_string_11
      t.string :performance_string_12
      t.string :performance_string_13
      t.string :performance_string_14
      t.string :performance_string_15
      t.integer :performance_integer_1
      t.integer :performance_integer_2
      t.integer :performance_integer_3
      t.integer :performance_integer_4

      t.timestamps
    end
  end
end
