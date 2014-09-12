class TwitterSearcher
  class_attribute :searcher
  self.searcher = TwitterClient.new
  attr_reader :results

  def initialize(search_term)
    @results = searcher.search(search_term).to_a
  end
end
