class Stat < ApplicationRecord
  extend Enumerize

  enumerize :stat_svg_1, in: Svg
  enumerize :stat_svg_2, in: Svg
  enumerize :stat_svg_3, in: Svg

  has_one_attached :stat_image
  def stat_nail
      return self.stat_image.variant(resize: '100x100') if self.stat_image.attached? 
  end

  def stat_image_variant
    return self.stat_image.variant(resize: '3000x811!') if self.stat_image.attached? 
  end

  # validates_presence_of :string_1
  rails_admin do
    configure :stat_string_num_1 do
      label 'Number Input 1: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :stat_string_num_2 do
      label 'Number Input 2: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :stat_string_num_3 do
      label 'Number Input 3: '
      help " Must be greater than or equal to => 0, less than or equal to => 9999999999"
    end
    configure :stat_image do
      label 'Image File: '
      help "For best results image size should be 3000 x 811 px"
    end
    configure :stat_svg_1 do
      label 'Icon 1: '
      help ""
    end
    configure :stat_svg_2 do
      label 'Icon 2: '
      help ""
    end
    configure :stat_svg_3 do
      label 'Icon 3: '
      help ""
    end
    configure :stat_string_num_1 do
      label 'Stat text 1: '
      help ""
    end
    configure :stat_string_2 do
      label 'Stat text 2: '
      help ""
    end
    configure :stat_string_3 do
      label 'Stat text 3: '
      help ""
    end
    configure :stat_string_4 do
      label 'Stat text 4: '
      help ""
    end
    configure :stat_string_5 do
      label 'Stat text 5: '
      help ""
    end
  end

  validates :stat_string_num_1, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999999 }
  validates :stat_string_num_2, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999999 }
  validates :stat_string_num_3, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9999999999 }

end
