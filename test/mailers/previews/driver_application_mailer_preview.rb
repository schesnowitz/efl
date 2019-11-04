# Preview all emails at http://localhost:3000/rails/mailers/driver_application_mailer
class DriverApplicationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/driver_application_mailer/driver_application
  def driver_application
    application = DriverApplication.last
    DriverApplicationMailer.driver_application(application)
  end

end
