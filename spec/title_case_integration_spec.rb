require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble path', {:type => :feature}) do
  it('figures out the scrabble value of a word') do
    visit('/')
    fill_in('points', :with => 'blue')
    click_button('Send')
    expect(page).to have_content('6')
  end
end
