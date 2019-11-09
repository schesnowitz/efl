class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.string :string_1
      t.string :string_2
      t.string :string_3
      t.string :string_4
      t.string :string_5
      t.string :string_num_1
      t.string :string_num_2
      t.string :string_num_3

      t.timestamps
    end
  end
end
