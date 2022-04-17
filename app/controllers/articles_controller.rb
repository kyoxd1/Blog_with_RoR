class ArticlesController < ApplicationController
    def new
        @article = Article.new
        @article.title = "escribe el titulo"
    end

    def create
        @article = Article.create(title: params[:article][:title])
    end
end
