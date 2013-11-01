10.times do |x|
  labels = []
  title = Faker::Company.catch_phrase
  text = Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph + "<br /><br />" + Faker::Lorem.paragraph
  labels.push(Faker::Lorem.words(num=1)[0])
  labels.push(Faker::Lorem.words(num=1)[0])

  Article.create(:title => title, :text => text, :labels => labels)

end