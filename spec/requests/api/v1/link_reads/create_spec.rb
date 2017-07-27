require 'rails_helper'

describe "Link Reads Create API" do
  it "returns top 10 links sorted by count within last 24 hrs" do
    create_spaced_out_reads

    binding.pry

    new_hot = "https://www.fabricationgem.org/"
    # add an additional link so that fabricator is positioned
    # to overtake the current hot read
    Link.create(url: new_hot)

    post '/api/v1/links', {params: {url: new_hot}}

    expect(response).to be_success



    links = JSON.parse(response.body, symbolize_names: true)

    expect(links.count).to eq(10)
    expect(links.first[:url]).to eq("http://getbootstrap.com/getting-started/")
    expect(links.last[:url]).to eq("https://mail.google.com")
  end
end
