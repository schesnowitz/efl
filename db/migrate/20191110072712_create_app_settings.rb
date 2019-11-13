class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.boolean :boolean_1, default: false
      t.boolean :boolean_2, default: false
      t.boolean :hide_logo_text, default: false
      t.boolean :hide_logo_image, default: false
      t.string :mailer_send_to_email1
      t.string :mailer_send_to_email2
      t.string :string_1
      t.string :string_2
      t.string :string_3
      t.string :string_4
      t.string :string_5


      t.timestamps
    end
  end
end
