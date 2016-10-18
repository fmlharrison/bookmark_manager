require 'spec_helper'

feature "Adding a new link" do
  scenario "User adds a new link to the manager" do

    visit '/links'
    click_button "Add New Link"
    fill_in('Name', with: 'Matador blog')
    fill_in('Tag', with: 'Travel')
    fill_in('URL', with: 'http://matadornetwork.com/')
    click_button "Add"

    within 'ul#links' do
      expect(page).to have_content("Matador blog")
    end
    
  end
end
