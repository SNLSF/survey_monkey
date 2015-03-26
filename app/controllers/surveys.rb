get '/surveys/new' do
  # goes to the form to create a new survey
end

post '/surveys/:id' do
  # writes the survey to the server and redirects to the survey's page
end

get '/surveys/:id' do
  # shows the specific survey
end

get '/surveys' do
  # shows all the surveys
end

put '/surveys/:id' do
  # edit the survey
end

delete '/surveys/:id'
  # destroy the survey
end

