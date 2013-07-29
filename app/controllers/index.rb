get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
  @user = Twitter.user(params[:username])
  @tweets = Twitter.user_timeline(@user, :count => 10)
  erb :tweets
end
