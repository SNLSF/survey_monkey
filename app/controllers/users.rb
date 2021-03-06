get '/users/new' do
  # goes to the form to create a new user
  erb :'users/signup'
end

post '/users' do
  # writes the user to the server and redirects to the home page after creating new user
  user = User.new(params[:user])
  if user.save
    session[:user_id]= user.id
  else
    p "new"
    redirect '/users/new'
  end
  p "user profile"
  redirect "/users/#{user.id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end

