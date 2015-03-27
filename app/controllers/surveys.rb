get '/surveys' do
  @surveys = Survey.all
  erb :'surveys/index'
end

get '/surveys/new' do
  # goes to the form to create a new survey
end

post '/surveys/:id' do
    # writes the survey to the server and redirects to the survey's page
    new_interrogation = Interrogation.new()
    if new_interrogation
      redirect '/surveys'
    end
  end
end

get '/surveys/:id' do
  # shows the specific survey
  @survey = Survey.find(params[:id])
  @questions = Question.where(survey_id: params[:id])
  erb :'surveys/show'
end

put '/surveys/:id' do
  # edit the survey
end

delete '/surveys/:id' do
  # destroy the survey
end

