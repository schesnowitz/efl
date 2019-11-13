class TakeAction < ApplicationRecord
  rails_admin do
    configure :hide_take_action do
      label 'Hide page take action: '
      help "When selected, the take action partial will be hidden from the view. "
    end
  end
end
