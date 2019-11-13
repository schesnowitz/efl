class Contact < ApplicationRecord
  rails_admin do
    configure :hide_contact do
      label 'Hide page contact: '
      help "When selected, the contact partial will be hidden from the view. "
    end
  end
end 
