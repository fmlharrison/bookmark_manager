require 'spec_helper'

feature "Bookmarks" do
  scenario "viewing a list of links" do
    Bookmarks.create(name: "Vegan Recipe Club", tag: "Vegan", url: "http://wwww.veganrecipeclub.org.uk")
    visit '/bookmarks'
    expect(page.status_code).to eq 200

    within 'ul#bookmarks' do
      expect(page).to have_content("Vegan Recipe Club")
    end
  end
end
