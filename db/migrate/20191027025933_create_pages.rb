class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :mailer_send_to_email1
      t.string :mailer_send_to_email2


      
      t.timestamps
    end
  end
end
app settiong