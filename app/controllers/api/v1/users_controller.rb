class Api::V1::UsersController < ApplicationController
  def index
    users = User.select(:id, :name, :email_address)
    render json: { users: users }
  end
end
