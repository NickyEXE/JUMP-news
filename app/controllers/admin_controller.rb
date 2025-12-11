class AdminController < ApplicationController
    def admin
        render :admin
    end

    def articles
        @articles = Article.all.order(created_at: :desc)
        render :articles
    end

    def users
        @users = User.all.order(created_at: :desc)
        render :users
    end
end
