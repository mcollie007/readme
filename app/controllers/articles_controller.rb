class ArticlesController < ApplicationController
    
    def index
        @articles = Article.order(upvotes: :desc).all
    end
    
    def update
        @article =Article.find(params[:id])
        upvotes = @article.upvotes + 1
        @article.update_attributes(upvotes: upvotes)
        redirect_to root_path
        #redirect_to('articles/index')
    end
end
