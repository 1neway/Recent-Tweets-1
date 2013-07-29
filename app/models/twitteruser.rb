class Twitteruser < ActiveRecord::Base
  has_many :tweets
  
  def tweets
    @user = Twitter.user(self.handle)
    Twitter.user_timeline(@user, :count => 10)
  end

  def fetch_tweets!
    # @twitteruser_id = Twitter.user(self.handle).id
    @user = Twitteruser.find_by_handle(self.handle)
    @tweets = Twitter.user_timeline(self.handle, {count: 200})
    @tweets.each do |tweet|
      Tweet.create(text: tweet.text, twitteruser_id: @user.id, tweet_id: tweet.id)
    end

  end

  def limit
#  def limit(number)
    @number = 15000 * 60   #15 minutes
    # avg time by latest 200 of known user
  end 

  def tweets_stale?
  end
end
