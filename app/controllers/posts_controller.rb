class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.build(posts_params)
    if @post.save
      flash[:success] = "Notícia criada com sucesso!"
      redirect_to @post
    else
      render 'posts/index'
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content, :image, :user_id)
  end
end
