require 'rails_helper.rb'

feature 'user makes posts' do
  scenario 'can create a post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', 'spec/files/images/fish.jpg')
    fill_in 'Caption', with: 'Guppy #Fishtank'
    click_button 'Create Post'
    expect(page).to have_content('#Fishtank')
    expect(page).to have_css("img[src*='fish.jpg']")
  end
end
