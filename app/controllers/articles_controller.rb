class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(
            title: params[:article][:title],
            content: params[:article][:content]
        )
    end
    
    

    def new
        @article = Article.new
    end

    def create
        @article = Article.create(
            title: params[:article][:title],
            content: params[:article][:content]
        )
    end
end
