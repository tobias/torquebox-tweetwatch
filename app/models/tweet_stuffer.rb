class TweetStuffer < TorqueBox::Messaging::MessageProcessor
  def on_message(msg)
    Tweet.create(msg)
  end
end
