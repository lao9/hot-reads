require 'rails_helper'

describe "Link Reads Index API" do
  it "returns top 10 links sorted by count within last 24 hrs" do
    create_spaced_out_reads

    get '/api/v1/links'

    expect(response).to be_success
    links = JSON.parse(response.body, symbolize_names: true)

    expect(links.count).to eq(10)
    expect(links.first[:url]).to eq("http://getbootstrap.com/getting-started/")
    expect(links.last[:url]).to eq("https://mail.google.com")
  end
end
