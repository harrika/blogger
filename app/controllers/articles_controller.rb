class ArticlesController < ApplicationController
  include ArticlesHelper

  @articles = Article.all
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end
end
