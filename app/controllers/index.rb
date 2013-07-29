get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
  # Recent Tweets
  erb :tweets
end
