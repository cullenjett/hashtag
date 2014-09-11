class TwitterSearcher
  class_attribute :searcher
  self.searcher = TwitterClient
  attr_reader :results

  def initialize(search_term)
    @results = searcher.new.search(search_term).take(15)
  end
end
