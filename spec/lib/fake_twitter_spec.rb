require 'rails_helper'

describe FakeTwitter, '.search' do
  it 'returns an object with a list of results' do
    results = FakeTwitter.new.search('term')
    expect(results).to be_an(Array)
  end
end

describe FakeTwitter, '#[]=' do
  it 'returns twitter statuses with the correct data when looking at results' do
    client = FakeTwitter.new
    client['term'] = [{'text' => 'great'}]
    results = client.search('term')

    expect(results).to be_an(Array)
    expect(results.length).to eq(1)
    expect(results.first).to be_a(Twitter::Status)
  end
end
