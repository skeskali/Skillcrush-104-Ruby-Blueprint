all_tweets = [
    "My first tweet",
    "My second tweet",
    "My third tweet",
    "I have boring tweets"
]

total_tweets = all_tweets.size
tweets_displayed = 0
while (tweets_displayed < total_tweets)
    puts all_tweets[tweets_displayed]
    tweets_displayed += 1
    puts tweets_displayed
end
