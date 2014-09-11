class TwitterSearcher
  attr_reader :results
  
  def initialize(search_term)
    @results = TwitterClient.new.search(search_term).take(15)
  end
end
