get '/users/new' do
  # goes to the form to create a new user
  erb :'users/signup'
end

post '/users' do
  # writes the user to the server and redirects to the home page after creating new user
end

delete 'users/:id' do
  # destroy user
end
