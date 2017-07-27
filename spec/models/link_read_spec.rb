require 'rails_helper'

RSpec.describe LinkRead, type: :model do
  let(:link_read) {create(:link_read)}

  describe "attributes" do
    it { expect(link_read).to respond_to(:url) }
  end

  describe "validations" do
    it { expect(link_read).to validate_presence_of(:url) }
  end
end
