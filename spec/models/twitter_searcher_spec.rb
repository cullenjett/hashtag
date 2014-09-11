require 'rails_helper'

describe TwitterSearcher, '#results' do
  it 'returns the results from a twitter search' do
    searcher = TwitterSearcher.new('awesome search')
    expect(searcher.results.length).to eq(15)
  end
end
