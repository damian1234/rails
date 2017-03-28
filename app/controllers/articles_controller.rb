class ArticlesController < ApplicationController
  #before_action :require_admin , except: [:index, :show]
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :text))
    @article.save
    redirect_to @article
  end
  
  def require_admin
      unless current_user.admin?
        flash[:danger] ="Unauthorized: Only admin accounts can create posts!"
        redirect_to action: "index"
      end
  end
end