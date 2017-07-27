require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link) {create(:link)}

  describe "attributes" do
    it { expect(link).to respond_to(:url) }
  end

  describe "validations" do
    it { expect(link).to validate_presence_of(:url) }
  end

  describe "methods" do
    it "returns the most read article within last 24 hrs" do
      create_spaced_out_reads
      hot_reads = Link.hot_reads
      hot = "http://getbootstrap.com/getting-started/"
      least_hot = "https://mail.google.com"

      expect(Link.where(url: hot).count).to eq(10)
      expect(hot_reads.first.url).to eq(hot)
      expect(Link.where(url: least_hot).count).to eq(1)
      expect(hot_reads.last.url).to eq(least_hot)
    end
  end
end
