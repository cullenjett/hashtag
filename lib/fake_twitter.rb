class FakeTwitter
  def initialize
    @results = Hash.new([])
  end

  def []=(term, twitter_hashes)
    base_tweet = { id: 12345 } # required to build a valid Twitter:Status
    @results[term] = twitter_hashes.map{ |th| Twitter::Status.new(th.merge(base_tweet)) }
  end

  def search(term)
    @results[term]
  end
end
