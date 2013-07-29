get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
  # Recent Tweets
  p params
  #@user = Twitter.user(params[:username])
  @user = Twitter.user("AirDisa")
  @tweets = Twitter.user_timeline("AirDisa")
  #@friend_count = @user.
  erb :tweets
end
