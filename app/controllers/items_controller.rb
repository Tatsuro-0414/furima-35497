class ItemsController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @users = User.new
  end
end


private
def comment_params
  params.require(:comment).permit(:text).merge(user_id: current_user.id,)
end