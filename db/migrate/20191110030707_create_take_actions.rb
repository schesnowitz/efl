class CreateTakeActions < ActiveRecord::Migration[5.2]
  def change
    create_table :take_actions do |t|
      t.boolean :hide_take_action
      t.string :take_action_string_1
      t.string :take_action_string_2
      t.string :take_action_string_3
      t.string :take_action_string_4
      t.timestamps
    end
  end
end
