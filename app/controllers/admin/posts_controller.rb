class Admin::PostsController < Admin::ApplicationController
  def index
    if params[:search].present?
      @posts = Post.where("title LIKE ? OR content LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%").page params[:page]
    else
      @posts = Post.all.order(id: :desc).page params[:page]
    end
  end

  def new
    @post = Post.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
  end
end
