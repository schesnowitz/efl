class Page < ApplicationRecord
  validates :count_num1, :count_num2, :count_num3, :numericality => {:only_integer => true}

  validates :count_num1, :count_num2, :count_num3, length: { maximum: 10 }
end
