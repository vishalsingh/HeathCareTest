require 'spec_helper'
describe Api::V1::UsersController do

  def parsed_response
    JSON.parse(response.body)
  end

  describe "GET #show" do

    before(:each) do
      @user = FactoryGirl.create :user
      get :show, id: @user.id
    end

    it "returns the response structure" do
      expect(parsed_response['data']['attributes']['name']).to eql @user.name
      expect(response.status).to eq(200)
    end

  end

end