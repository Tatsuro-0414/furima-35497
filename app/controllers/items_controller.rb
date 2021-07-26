class ItemsController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @users = User.new
  end
end


