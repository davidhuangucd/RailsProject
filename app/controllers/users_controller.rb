class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show
    @user = User.find_by(username: params[:username])
    @tweets = @user.tweets
  end
end
