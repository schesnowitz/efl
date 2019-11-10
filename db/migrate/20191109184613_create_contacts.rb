class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.boolean :hide_contact, default: false
      t.string :contact_string_1
      t.string :contact_string_2
      t.string :contact_string_3
      t.string :contact_string_4
      t.string :contact_string_5
      t.string :contact_string_6
      t.string :contact_string_7
      t.string :contact_string_8
      t.string :contact_string_9
      t.string :contact_string_10
      t.string :contact_string_11
      t.string :contact_string_12
      t.string :contact_string_13
      t.string :contact_string_14
      t.string :contact_string_15 

      t.timestamps
    end
  end
end
