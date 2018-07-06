class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    # we are going to construct a new article instance variable and save it
    @article = Article.new(article_params)
    #now when we hit save it works but doesn't know what to render, we need to give it a view
    @article.save
    # here we are redirecting it after saving to the show html
    redirect_to @article.show(@article)
  end


private
def article_params
# we are requiring the parameters of article and permitting both title and desc
params.require(:article).permit(:title, :description)
end
end
