class Page < ApplicationRecord
  
  



  has_one_attached :performance_image
  def performance_nail
    return self.performance_image.variant(resize: '100x100') if self.performance_image.attached? 
  end

  def eight_82
    return self.performance_image.variant(resize: '3000x882!') if self.performance_image.attached? 
  end

  




  has_one_attached :logo_image
  def logo_nail
    return self.logo_image.variant(resize: '100x50!') if self.logo_image.attached? 
  end

  def logo_image_resized
    return self.logo_image.variant(resize: '200x100!') if self.logo_image.attached? 
  end






  # validates :count_num1, :count_num2, :count_num3, :performance_num1, :performance_num2, :performance_num3, :numericality => {:only_integer => true}

  
  # validates :performance_num1, :performance_num2, :performance_num3, length: { maximum: 10 }
end
