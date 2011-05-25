class TweetSweeper
  def run
    destroyed = Tweet.destroy_all(["created_at < ?", Time.now - 1.minute])
    puts "TweetSweeper: swept #{destroyed.size} tweets"
  end
end
