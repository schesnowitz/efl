class Footer < ApplicationRecord

  enum footer_font_awesome: FontAwesomeSolid


  rails_admin do
    configure :hide_footer do
      label 'Hide page footer: '
      help "When selected, the footer partial will be hidden from the view. "
    end
    configure :footer_string_1 do
      label 'Text Input 1: '
      help " "
    end
    configure :footer_string_2 do
      label 'Text Input 2: '
      help " "
    end
    configure :footer_string_3 do
      label 'Text Input 3: '
      help " "
    end
    configure :footer_string_4 do
      label 'Text Input 4: '
      help " "
    end
    configure :footer_string_5 do
      label 'Text Input 5: '
      help " "
    end
    configure :footer_font_awesome do
      label 'Font Awesome Icon: '
      help "To preview icons visit fontawesome.com/icons"

    end
  end
end
