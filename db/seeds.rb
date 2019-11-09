
require 'faker'


stat = Stat.find_or_initialize_by(id: 1)

  stat.string_1 = Faker::Company.industry
  stat.string_2 = Faker::Company.industry
  stat.string_3 = Faker::Company.industry
  stat.string_4 = Faker::Company.industry
  stat.string_5 = Faker::Company.industry
  stat.string_num_1 = 321321
  stat.string_num_2 = 54645484
  stat.string_num_3 = 89874
stat.save!
puts stat.inspect

page = Page.find_or_initialize_by(id: 1)


page.save!
puts page.inspect


