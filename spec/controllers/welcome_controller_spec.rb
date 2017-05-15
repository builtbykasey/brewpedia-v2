require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  it "redirects to signin" do
      get :index
      expect(response).to redirect_to( new_user_session_path )
    end

end
