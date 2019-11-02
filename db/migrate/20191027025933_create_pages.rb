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
      t.timestamps
    end
  end
end
