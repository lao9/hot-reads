require 'rails_helper'

feature "hot reads index" do
  scenario "displays top reads sorted by read count" do
    create_spaced_out_reads

    visit '/'

    within "h1" do
      expect(page).to have_content("Hot Reads")
    end

    expect(page).to have_selector(".link", count: 10)

    within ".link:nth-child(1)" do
      expect(page).to have_content("1. http://getbootstrap.com/getting-started/")
      expect(page).to have_link("http://getbootstrap.com/getting-started/")
    end

    within ".link:nth-child(10)" do
      expect(page).to have_content("10. https://mail.google.com")
      expect(page).to have_link("https://mail.google.com")
    end

  end
end
