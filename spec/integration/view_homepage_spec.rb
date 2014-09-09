require 'rails_helper'

feature "View the homepage" do
  scenario "learn about the website" do
    visit root_path
    expect(page).to have_content 'Hashtag'
    expect(page).to have_css '[data-role="description"]'
  end
end
