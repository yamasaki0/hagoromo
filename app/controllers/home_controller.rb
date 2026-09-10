class HomeController < ApplicationController
  def index
    @posts = Post
      .includes(:user, :tags, image_attachment: :blob)
      .order(created_at: :desc)
      .limit(30)
  end
end
