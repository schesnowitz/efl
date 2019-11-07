json.extract! incoming_contact, :id, :name, :email, :message, :created_at, :updated_at
json.url incoming_contact_url(incoming_contact, format: :json)
