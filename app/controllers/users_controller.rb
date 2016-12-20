post '/users' do
	@user = User.new(params[:new_user])
	@user.password = params[:new_user][:password]

	if @user.save
		login(@user)
		redirect '/'
	else
		erb :'users/new'
	end	
end

get '/users/new' do
	erb :'users/new'
end