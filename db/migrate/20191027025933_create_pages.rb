class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :mailer_send_to_email1
      t.string :mailer_send_to_email2
      t.string :name
      t.string :count_text1
      t.string :count_text2
      t.string :count_text3
      t.string :count_text4
      t.string :count_text5
      t.string :count_text6
      t.string :count_num1
      t.string :count_num2
      t.string :count_num3
      t.string :performance_text1
      t.string :performance_text2
      t.string :performance_text3
      t.string :performance_text4
      t.string :performance_text5
      t.string :performance_text6
      t.string :performance_text7
      t.string :performance_text8
      t.string :performance_text9
      t.string :performance_text10
      t.string :performance_text11
      t.string :performance_text12
      t.string :performance_text13
      t.string :performance_text14
      t.string :performance_text15
      t.integer :performance_num1
      t.integer :performance_num2
      t.integer :performance_num3
      t.integer :performance_num4
      t.string :top_text1
      t.string :top_text2
      t.string :top_text3
      t.string :top_text4      
      t.string :foot_text1
      t.string :foot_text2
      t.string :foot_text3
      t.string :foot_text4 
      t.string :foot_text5  
      t.string :contact_text1
      t.string :contact_text2
      t.string :contact_text3
      t.string :contact_text4
      t.string :contact_text5
      t.string :contact_text6
      t.string :contact_text7
      t.string :contact_text8
      t.string :contact_text9
      t.string :contact_text10
      t.string :contact_text11
      t.string :contact_text12
      t.string :contact_text13
      t.string :contact_text14
      t.string :contact_text15    
      t.string :about_text1
      t.string :about_text2
      t.string :about_text3
      t.string :about_text4
      t.string :about_text5
      t.string :about_text6
      t.string :about_text7
      t.string :about_text8
      t.string :about_text9
      t.string :about_text10
      t.string :about_text11
      t.string :about_text12
      t.string :about_text13
      t.string :about_text14
      t.string :about_text15  
      t.string :services_text1
      t.string :services_text2
      t.string :services_text3
      t.string :services_text4
      t.string :services_text5
      t.string :services_text6
      t.string :services_text7
      t.string :services_text8
      t.string :services_text9
      t.string :services_text10
      t.string :services_text11
      t.string :services_text12
      t.string :services_text13
      t.string :services_text14
      t.string :services_text15  
      t.string :services_text16
      t.string :services_text17
      t.string :services_text18
      t.string :services_text19
      t.string :services_text20
      t.string :services_text21
      t.string :services_text22
      t.string :services_text23
      t.string :services_text24
      t.string :services_text25
      t.string :services_text26
      t.string :services_text27
      t.string :services_text28
      t.string :services_text29
      t.string :services_text30   
      t.string :start_text1
      t.string :start_text2
      t.string :start_text3
      t.string :start_button_text
      t.boolean :show_home
      t.boolean :show_about
      t.boolean :show_stats
      t.boolean :show_services
      t.boolean :show_performance
      t.boolean :show_get_started
      t.boolean :show_contact
      t.boolean :show_logo_image
      t.boolean :show_logo_text
      t.string :logo_text1
      t.string :logo_text2
      t.string :logo_text3


      
      t.timestamps
    end
  end
end
