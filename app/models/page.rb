class Page < ApplicationRecord
  has_one_attached :image
  has_one_attached :image1
  has_one_attached :image2
  has_one_attached :image3
  has_one_attached :image4
  has_one_attached :image5
  has_one_attached :image6
  has_one_attached :image7
  has_one_attached :image8
  has_one_attached :image9
  has_one_attached :image10

  def thumbnail1
    return self.image.variant(resize: '100x100')
  end

  def three_k_eight_eleven
    return self.image.variant(resize: '3000x811')
  end

  validates :count_num1, :count_num2, :count_num3, :numericality => {:only_integer => true}

  validates :count_num1, :count_num2, :count_num3, length: { maximum: 10 }
end
