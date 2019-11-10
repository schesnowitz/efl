class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.boolean :hide_service, default: false
      t.string :service_string_1
      t.string :service_string_2
      t.string :service_string_3
      t.string :service_string_4
      t.string :service_string_5
      t.string :service_string_6
      t.string :service_string_7
      t.string :service_string_8
      t.string :service_string_9
      t.string :service_string_10
      t.string :service_string_11
      t.string :service_string_12
      t.string :service_string_13
      t.string :service_string_14
      t.string :service_string_15
      t.string :service_string_16
      t.string :service_string_17
      t.string :service_string_18
      t.string :service_string_19
      t.string :service_string_20
      t.string :service_string_21
      t.string :service_string_22
      t.string :service_string_23
      t.string :service_string_24
      t.string :service_string_25
      t.string :service_string_26
      t.string :service_string_27
      t.string :service_string_28
      t.string :service_string_29
      t.string :service_string_30

      t.timestamps
    end
  end
end
