require 'rails_helper'

describe "Link Reads Reset API" do
  # for testing on the other endpoint ...
  it "resets database to expected index outputs" do
    create_list(:link, 40)

    get '/api/v1/reset'

    expect(response).to be_success
    links = JSON.parse(response.body, symbolize_names: true)

    expect(links.count).to eq(10)
    expect(links.first[:url]).to eq("http://getbootstrap.com/getting-started/")
    expect(links.last[:url]).to eq("https://mail.google.com")
  end
end
