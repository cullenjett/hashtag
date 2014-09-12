require 'rails_helper'

describe TwitterSearcher, '#results' do
  it 'returns the results from a twitter search' do
    searcher = TwitterSearcher.new('awesome search')
    expect(searcher.results).to be_an(Array)
  end
end

describe TwitterSearcher, 'using a custom searcher' do
  it "invoking search returns results form the searcher passed" do
    search_results = [1, 2, 3]
    fake_searcher = stub('fake searcher', search: search_results)
    TwitterSearcher.searcher = fake_searcher

    real_searcher = TwitterSearcher.new('term')
    expect(real_searcher.results).to eq(search_results)
  end
end
