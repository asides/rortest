class IndexController < ApplicationController
  def index
    @posts = Post.all.order("is_default DESC")
  end
end
