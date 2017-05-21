require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: "user@example.com", password: "password") }

  it { is_expected.to have_many(:wikis) }

  describe "attributes" do
    it "should have email and password attributes" do
      expect(user).to have_attributes(email: user.email, password: user.password)
    end

    # it "responds to role" do
    #   expect(user).to respond_to(:role)
    # end
    #
    # it "responds to admin?" do
    #   expect(user).to respond_to(:admin?)
    # end
    #
    # it "responds to member?" do
    #   expect(user).to respond_to(:member?)
    # end
  end
end
