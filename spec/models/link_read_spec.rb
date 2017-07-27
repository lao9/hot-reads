require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link) {create(:link)}

  describe "attributes" do
    it { expect(link).to respond_to(:url) }
  end

  describe "validations" do
    it { expect(link).to validate_presence_of(:url) }
  end
end
