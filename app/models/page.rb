class Page < ApplicationRecord
  
  

  has_one_attached :count_image
  def count_nail
      return self.count_image.variant(resize: '100x100') if self.count_image.attached? 
  end

  def three_k_eight_eleven
    return self.count_image.variant(resize: '3000x811!') if self.count_image.attached? 
  end

  has_one_attached :performance_image
  def performance_nail
    return self.performance_image.variant(resize: '100x100') if self.performance_image.attached? 
  end

  def eight_82
    return self.performance_image.variant(resize: '3000x882!') if self.performance_image.attached? 
  end

  has_one_attached :top_image
  def top_nail
    return self.top_image.variant(resize: '100x100') if self.top_image.attached? 
  end

  def three_two
    return self.top_image.variant(resize: '3000x2000!') if self.top_image.attached? 
  end

  
 

  




  validates :performance_num1, :performance_num2, :performance_num3, :performance_num4, numericality: { less_than_or_equal_to: 100 }

  validates :count_num1, :count_num2, :count_num3, :performance_num1, :performance_num2, :performance_num3, :numericality => {:only_integer => true}

  
  validates :performance_num1, :performance_num2, :performance_num3, length: { maximum: 10 }
end
