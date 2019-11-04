page = Page.create!(
  name: "Some Name",
  count_text1: "count_text1",
  count_text2: "count_text2",
  count_text3: "count_text3",
  count_text4: "count_text4",
  count_text5: "count_text5",
  count_num1: 111111,
  count_num2: 2222222,
  count_num3: 33333,
  performance_num1: 55,
  performance_num2: 47,
  performance_num3: 79,
  performance_num4: 31,
)
puts page.inspect


