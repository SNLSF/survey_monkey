get 'sessions/new/' do
  # render sign-in page
  erb :signin
end

post '/sessions' do
  #sign in
  @current_user = User.find_by(email: params[:email])
  if @current_user && @current_user.authenticate(params[:password])
    session[:user_id] = @current_user.id
    redirect '/'
  else
    redirect '/sessions/new'
  end
end

delete '/sessions/:id' do
  session[:user_id]=nil
  redirect '/'
end
