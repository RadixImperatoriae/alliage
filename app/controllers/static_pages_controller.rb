class StaticPagesController < ApplicationController
  def home
    @posts = Post.limit(3).order('id desc')
  end

  def help
  end

  def about
  end

  def contact
  end
end
