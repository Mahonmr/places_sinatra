require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('takes in user location and saves it') do
    visit('/')
    fill_in('location', :with => "Portland")
    click_button('send')
    expect(page).to have_content("Successfully saved location")
    click_link('back')
    expect(page).to have_content("Portland")
  end
end
