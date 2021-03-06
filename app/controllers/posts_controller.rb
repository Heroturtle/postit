class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  def edit

  end

  def update

  end

  private

    def post_params
      params(:post).require(:title, :url, :description)
    end
end
