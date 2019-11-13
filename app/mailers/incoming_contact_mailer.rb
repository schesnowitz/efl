class IncomingContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.incoming_contact_mailer.name.subject
  #
  def incoming_contact(incoming_contact)
    @incoming_contact = incoming_contact
    @app_setting = AppSetting.find(1)
    

    mail to: "#{@app_setting.mailer_send_to_email1}", subject: "New Incoming Contact"
  end
end

