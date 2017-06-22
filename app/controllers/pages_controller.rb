class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all.where("user_id = ?", current_user.id)
    @newPost = Post.new
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
      @user = User.find_by_username(params[:id])
    else
      redirect_to root_path, :notice => "Usuário não encontrado!"
    end

    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @newPost = Post.new

    @fiveUsers = User.all.first(5)
  end

  def explore
    @posts = Post.all
  end
end

