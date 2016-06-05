class Api::V1::UsersController < ApplicationController
  def show
    user = User.first
    #binding.pry
    render :json => user
  end
end


