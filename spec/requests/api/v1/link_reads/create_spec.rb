require 'rails_helper'

describe "Link Reads Create API" do
  it "returns top 10 links sorted by count within last 24 hrs" do
    create_spaced_out_reads
    old_hot = "http://getbootstrap.com/getting-started/"
    new_hot = "https://www.fabricationgem.org/"

    expect(Link.where(url: old_hot).count).to eq(10)
    expect(Link.where(url: new_hot).count).to eq(9)

    # add an additional link so that fabricator is positioned
    # to overtake the current hot read
    Link.create(url: new_hot)

    post '/api/v1/links', {params: {url: new_hot}}
    expect(response).to be_success

    expect(Link.where(url: new_hot).count).to eq(11)
    expect(Link.hot_reads.first.url).to eq(new_hot)

    expect(Link.where(url: old_hot).count).to eq(10)
    expect(Link.hot_reads[1].url).to eq(old_hot)
  end
end
