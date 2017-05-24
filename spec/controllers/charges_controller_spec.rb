require 'rails_helper'

RSpec.describe ChargesController, type: :controller do
  let(:user) { User.create!(email: "user@example.com", password: "password", role: "standard") }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

  end

  describe "POST create" do
    it "changes role to premium" do
      expect(user.role).to eql("premium")
    end
  end

end
