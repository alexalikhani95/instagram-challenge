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

  feature 'needs an image to make a post' do
    scenario 'image required for post' do
      visit '/'
      click_link 'New Post'
      fill_in 'Caption', with: 'Tropical Fish'
      click_button 'Create Post'
      expect(page).to have_content('Image required to make a post!')
    end
  end
end
