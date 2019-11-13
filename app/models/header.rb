class Header < ApplicationRecord


  has_one_attached :header_image
  def header_nail
    return self.header_image.variant(resize: '100x100') if self.header_image.attached? 
  end

  def header_image_variant
    return self.header_image.variant(resize: '3000x2000!') if self.header_image.attached? 
  end

  rails_admin do

    configure :hide_header do
      label 'Hide page header: '
      help "When selected, the header partial will be hidden from the view. "
    end

    configure :header_string_1 do
      label 'Text Input 1: '
      help " "
    end
    configure :header_string_2 do
      label 'Text Input 2: '
      help " "
    end
    configure :header_string_3 do
      label 'Text Input 3: '
      help " "
    end
    configure :header_string_4 do
      label 'Button Text: '
      help " "
    end
    configure :header_image do
      label 'Image File: '
      help "For best results image size should be 3000 x 2000 px"
    end
  end
end
