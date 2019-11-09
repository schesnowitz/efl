class Stat < ApplicationRecord
  has_one_attached :stat_image
  def stat_nail
      return self.stat_image.variant(resize: '100x100') if self.stat_image.attached? 
  end

  def image_variant
    return self.stat_image.variant(resize: '3000x811!') if self.stat_image.attached? 
  end

  # validates_presence_of :string_1
  rails_admin do
    configure :string_num_1 do
      label 'Number Input 1: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :string_num_2 do
      label 'Number Input 2: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :string_num_3 do
      label 'Number Input 3: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :stat_image do
      label 'Image File: '
      help "For best results image size should be 3000 x 811 px"
    end
  end

  validates :string_num_1, :string_num_1, :string_num_1, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999999 }

end
