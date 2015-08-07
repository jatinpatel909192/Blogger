class ArticlesController < ApplicationController
include ArticlesHelper

  def index
    @articles = Article.all
  end
  def show
  	@article = Article.find(params[:id])
    @comment = Comment.new
    @comment.article_id = @article_id
  end
  def new
  	@article = Article.new
  end
  def create
  	#@article = Article.new(title: params[:article][:title],body: params[:article][:body])
    #@article = Article.new(title: params[:article])
    @article = Article.new(article_params)
    @article.save
    flash.notice = "Article '#{@article.title}' Created......"
    #redirect_to article_path(@article)
    redirect_to action: "index"
  end
  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy
  	flash.notice = "Article '#{@article.title}' Deleted......"
    redirect_to action: "index"
  end
  def edit
  	@article = Article.find(params[:id])
  	flash.notice = "Article '#{@article.title}' Edited......"
  end
  def update
  	@article = Article.find(params[:id])
  	@article.update(article_params)

  	flash.notice = "Article '#{@article.title}' Updated......"

  	redirect_to article_path(@article)
  end
end