class UsersController < ApplicationController
before_action :authenticate_user!,only: [:index]
before_action :set_user, only: [:show]
before_action :get_counts, only: [:index]

  def index
  	 case params[:people] when "friends"
  	 	@users = current_user.active_friends
  	 when "requests"
  	 	@users = current_user.pending_friend_request_from.map(&:user)
  	 when "pending"
  	 	@users = current_user.pending_friend_request_to.map(&:friend)
  	 else
  	 	@users = User.where.not(id: current_user.id)
  	 end
  end

  def show
  	@post = Post.new
  	@posts = @user.posts
  	@activities = PublicActivity::Activity.where(owner_id: @user.id) + PublicActivity::Activity.where(recipient_id: @user.id)
  end

  private
  def get_counts
  	@friend_count = current_user.active_friends.size
  	@pending_count = current_user.pending_friend_request_to.map(&:friend).size

  	
  end

  def set_user
  	@user = User.find_by(username: params[:id])
  end


end
