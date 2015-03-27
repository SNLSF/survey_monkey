get '/surveys' do
  # shows all the surveys
end

get '/surveys/new' do
  # goes to the form to create a new survey
  erb :'surveys/new'
end

post '/surveys/new' do
  survey = Survey.create(title: params[:title])

  new_questions = []
  params[:question].each do |k,v|
    new_questions << survey.questions.create(content: v)
  end

  new_questions.each_with_index()
  # survey.questions.create(content: params[:co])
  ""
end


get '/surveys/:id' do
  # shows the specific survey
end

put '/surveys/:id' do
  # edit the survey
end

delete '/surveys/:id' do
  # destroy the survey
end

