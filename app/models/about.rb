class About < ApplicationRecord
  has_one_attached :about_image
  def about_nail
      return self.about_image.variant(resize: '100x100') if self.about_image.attached? 
  end

  def about_image_variant
    return self.about_image.variant(resize: '3000x2844!') if self.about_image.attached? 
  end

  rails_admin do
    configure :hide_about do
      label 'Hide page about: '
      help "When selected, the about partial will be hidden from the view. "
    end
  end
end
