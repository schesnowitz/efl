class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.string :mailer_send_to_email1
      t.string :mailer_send_to_email2
      t.string :string_1
      t.string :string_2
      t.string :string_3
      t.string :string_4
      t.string :string_5
      t.boolian :boolian_1

      t.timestamps
    end
  end
end
