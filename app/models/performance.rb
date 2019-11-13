class Performance < ApplicationRecord
  has_one_attached :performance_image
  def performance_nail
    return self.performance_image.variant(resize: '100x100') if self.performance_image.attached? 
  end

  def performance_image_variant
    return self.performance_image.variant(resize: '3000x882!') if self.performance_image.attached? 
  end

  
    validates :performance_integer_1, :performance_integer_2,     :performance_integer_3, :performance_integer_4, numericality: { :greater_than_or_equal_to => 0, less_than_or_equal_to: 100 }  


  rails_admin do
    configure :hide_performance do
      label 'Hide page performance: '
      help "When selected, the performance partial will be hidden from the view. "
    end
    configure :performance_integer_1 do
      label 'Integer Input 1: '
      help " Must be greater than or equal to => 0, less than or equal to => 100"
    end
    configure :performance_integer_2 do
      label 'Integer Input 2: '
      help " Must be greater than or equal to => 0, less than or equal to => 100"
    end
    configure :performance_integer_3 do
      label 'Integer Input 3: '
      help " Must be greater than or equal to => 0, less than or equal to => 100"
    end
    configure :performance_integer_4 do
      label 'Integer Input 4: '
      help " Must be greater than or equal to => 0, less than or equal to => 100"
    end
    configure :performance_image do
      label 'Image File: '
      help "For best results image size should be 3000 x 880 px"
    end
  end
end
