json.extract! driver_application, :id, :first_name, :last_name, :dob, :social, :street, :city, :state, :postal, :phone, :email, :created_at, :updated_at
json.url driver_application_url(driver_application, format: :json)
