require 'rails_helper'

feature 'Index displays a list of posts' do
  scenario 'the index displays correct created post information' do
    post_one = create(:post, caption: 'Guppy1')
    post_two = create(:post, caption: 'Guppy2')

    visit '/'
    expect(page).to have_content('Guppy1')
    expect(page).to have_content('Guppy2')
    expect(page).to have_css("img[src*='fish']")
  end
end
