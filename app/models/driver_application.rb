class DriverApplication < ApplicationRecord

  has_one_attached :license_image
  def license_nail
    return self.logo_image.variant(resize: '300x200') if self.license_image.attached?  
  end
  # validates :years_experience, :numericality => { greater_than_or_equal_to: 2 , message: "| We require at least two years of CDL experience."}

  # validates_presence_of :dob, message: "| Please enter your Date of Birth."

  # validates_presence_of :phone, :first_name, :last_name, :license_number, :street, :city, :state, :postal, message: "is required."
end
 