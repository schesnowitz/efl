class AppSetting < ApplicationRecord
  has_one_attached :logo_image
  def logo_image_variant
    return self.logo_image.variant(resize: '100x50!') if self.logo_image.attached? 
  end

  def logo_image_resized
    return self.logo_image.variant(resize: '200x100!') if self.logo_image.attached? 
  end

  rails_admin do
    configure :string_1 do
      label 'Logo text 1: '
      help " "
    end
    configure :string_2 do
      label 'Logo text 2: '
      help " "
    end
    configure :string_3 do
      label 'Logo text 3: '
      help " "
    end
    configure :string_3 do
      label 'Logo text 3: '
      help " "
    end
    configure :string_3 do
      label 'Logo text 3: '
      help " "
    end
    configure :mailer_send_to_email1 do
      label 'Contact form email: '
      help "Enter the email address where you want to receive the contact form emails "
    end
    configure :mailer_send_to_email2 do
      label 'Driver application form email: '
      help "Enter the email address where you want to receive driver application emails "
    end
    configure :string_4 do
      label 'Application title: '
      help " Browser tab text"
    end
    configure :string_5 do
      label 'This input not assigned: '
      help " "
    end
    configure :boolean_1 do
      label 'This input not assigned: '
      help " Extra bool no function assigned  "
    end
    configure :boolean_2 do
      label 'This input not assigned: '
      help " Extra bool no function assigned  "
    end


  end
end
