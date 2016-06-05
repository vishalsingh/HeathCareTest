class Api::V1::UsersController < ApplicationController
  def show
    user = User.first
    render :json => user
  end
end


