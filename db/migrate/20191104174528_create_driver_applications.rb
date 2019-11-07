class CreateDriverApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_applications do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :social
      t.string :street
      t.string :city
      t.string :state
      t.string :postal
      t.string :phone
      t.string :email
      t.date :year
      t.string :make
      t.string :model
      t.string :color
      t.string :vin
      t.string :mileage
      t.string :license_number
      t.text :notes
      t.integer :years_experience

      t.timestamps
    end
  end
end
