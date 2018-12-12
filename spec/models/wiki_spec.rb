require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:user) { User.create!(email: "user@example.com", password: "password") }
  let(:wiki) { Wiki.create!(blend_name: "New Wiki Title", notes: "New Wiki notes", user: user) }

  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:blend_name) }
  it { is_expected.to validate_presence_of(:notes) }
  it { is_expected.to validate_presence_of(:user) }

  it { is_expected.to validate_length_of(:blend_name).is_at_least(2) }
  it { is_expected.to validate_length_of(:notes).is_at_least(5) }

  describe "attributes" do
    it "has blend name, notes and user attributes" do
      expect(wiki).to have_attributes(blend_name: "New Wiki Title", notes: "New Wiki notes", user: user)
    end
  end

end
