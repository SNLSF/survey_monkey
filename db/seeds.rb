require 'faker'

5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
  4.times do
    survey = user.surveys.create(title: Faker::Lorem.word)
    5.times do
      question = survey.questions.create(content: "#{Faker::Company.bs}?")
      4.times do
        choice = question.choices.create(content: Faker::Company.bs)
      end
    end
  end
end

# users = User.all
# surveys = Survey.all

# 5.times do |i|
#   users[i].participated_surveys << surveys[i]
#   users[i].participated_surveys << surveys[5+i]
#   users[i].participated_surveys << surveys[10+i]
# end
