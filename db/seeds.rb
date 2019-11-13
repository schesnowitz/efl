
require 'faker'
steve = User.create(
  password: "password", 
  password_confirmation: "password", 

  email: "s.chesnowitz@gmail.com",
  admin: true

  ) 
  puts steve.inspect

stat = Stat.find_or_initialize_by(id: 1)

  stat.stat_string_1 = Faker::Company.industry
  stat.stat_string_2 = Faker::Company.industry
  stat.stat_string_3 = Faker::Company.industry
  stat.stat_string_4 = Faker::Company.industry
  stat.stat_string_5 = Faker::Company.industry
  stat.stat_string_num_1 = 321321
  stat.stat_string_num_2 = 54645484
  stat.stat_string_num_3 = 89874
stat.save!
puts stat.inspect

about = About.find_or_initialize_by(id: 1)

  about.about_string_1 = Faker::Company.bs
  about.about_string_2 = Faker::Company.bs
  about.about_string_3 = Faker::Company.bs
  about.about_string_4 = Faker::Company.bs
  about.about_string_5 = Faker::Company.bs
  about.about_string_6 = Faker::Company.bs
  about.about_string_7 = Faker::Company.bs
  about.about_string_8 = Faker::Company.bs
  about.about_string_9 = Faker::Company.bs
  about.about_string_10 = Faker::Company.bs
  about.about_string_11 = Faker::Company.bs
  about.about_string_12 = Faker::Company.bs
  about.about_string_13 = Faker::Company.bs
  about.about_string_14 = Faker::Company.bs


about.save!
puts about.inspect

service = Service.find_or_initialize_by(id: 1)

  service.service_string_1 = Faker::Company.industry
  service.service_string_2 = Faker::Company.industry
  service.service_string_3 = Faker::Company.industry
  service.service_string_4 = Faker::Company.industry
  service.service_string_5 = Faker::Company.industry
  service.service_string_6 = Faker::Company.industry
  service.service_string_7 = Faker::Company.industry
  service.service_string_8 = Faker::Company.bs
  service.service_string_9 = Faker::Company.bs
  service.service_string_10 = Faker::Company.bs
  service.service_string_11 = Faker::Company.bs
  service.service_string_12 = Faker::Company.bs
  service.service_string_13 = Faker::Company.bs
  service.service_string_14 = Faker::Company.bs
  service.service_string_15 = Faker::Company.bs
  service.service_string_16 = Faker::Company.bs
  service.service_string_17 = Faker::Company.bs
  service.service_string_18 = Faker::Company.bs
  service.service_string_19 = Faker::Company.bs
  service.service_string_20 = Faker::Company.bs
  service.service_string_21 = Faker::Company.bs
  service.service_string_22 = Faker::Company.bs
  service.service_string_23 = Faker::Company.bs
  service.service_string_24 = Faker::Company.bs
  service.service_string_25 = Faker::Company.bs
  service.service_string_26 = Faker::Company.bs
  service.service_string_27 = Faker::Company.bs

service.save!
puts service.inspect

footer = Footer.find_or_initialize_by(id: 1)

  footer.footer_string_1 = Faker::Company.industry
  footer.footer_string_2 = Faker::Company.industry
  footer.footer_string_3 = Faker::Company.industry
  footer.footer_string_4 = Faker::Company.industry
  footer.footer_string_5 = Faker::Company.industry

footer.save!
puts footer.inspect

header = Header.find_or_initialize_by(id: 1)

  header.header_string_1 = Faker::Company.industry
  header.header_string_2 = Faker::Company.industry
  header.header_string_3 = Faker::Company.industry
  header.header_string_4 = Faker::Company.industry


header.save!
puts header.inspect

contact = Contact.find_or_initialize_by(id: 1)

  contact.contact_string_1 = Faker::Company.industry
  contact.contact_string_2 = Faker::Company.industry
  contact.contact_string_3 = Faker::Company.industry
  contact.contact_string_4 = Faker::Company.industry
  contact.contact_string_5 = Faker::Company.industry

contact.save!
puts contact.inspect

performance = Performance.find_or_initialize_by(id: 1)

  performance.performance_string_1 = Faker::Company.industry
  performance.performance_string_2 = Faker::Company.industry
  performance.performance_string_3 = Faker::Company.industry
  performance.performance_string_4 = Faker::Company.industry
  performance.performance_string_5 = Faker::Company.industry
  performance.performance_integer_1 = 71
  performance.performance_integer_2 = 23
  performance.performance_integer_3 = 63
  performance.performance_integer_4 = 88
performance.save!
puts performance.inspect

ta = TakeAction.find_or_initialize_by(id: 1)

  ta.take_action_string_1 = Faker::Company.industry
  ta.take_action_string_2 = Faker::Company.industry
  ta.take_action_string_3 = Faker::Company.industry
  ta.take_action_string_4 = Faker::Company.industry
ta.save!
puts ta.inspect

setting = AppSetting.find_or_initialize_by(id: 1)

  setting.string_1 = Faker::Company.industry
  setting.string_2 = Faker::Company.industry
  setting.string_3 = Faker::Company.industry
  setting.string_4 = Faker::Company.industry
  setting.mailer_send_to_email1 = "info@eaglefreightlines.com"
  setting.mailer_send_to_email2 = "info@eaglefreightlines.com"

setting.save!
puts setting.inspect

page = Page.find_or_initialize_by(id: 1)


page.save!
puts page.inspect


