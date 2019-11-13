class Service < ApplicationRecord
  rails_admin do
    configure :hide_service do
      label 'Hide page service: '
      help "When selected, the service partial will be hidden from the view. "
    end
  end
end
