class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
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
      t.timestamps
    end
  end
end
