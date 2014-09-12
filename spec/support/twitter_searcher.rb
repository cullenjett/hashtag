RSpec.configure do |config|
  config.around do |example|
    cached_twitter_searcher = TwitterSearcher.searcher
    example.run
    TwitterSearcher.searcher = cached_twitter_searcher
  end
end
