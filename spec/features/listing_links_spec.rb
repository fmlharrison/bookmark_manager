require 'spec_helper'

feature "Bookmarks" do

  scenario "viewing a list of links" do

    Link.create(name: "Vegan Recipe Club", tag: "Vegan", url: "http://wwww.veganrecipeclub.org.uk")

    visit '/links'

    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content("Vegan Recipe Club")
    end
  end
end
