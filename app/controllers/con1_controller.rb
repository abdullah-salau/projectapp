class Con1Controller < ApplicationController
  before_action :set_user1, only: %i[ show edit update destroy ]
  def home
    @user1s = User1.all
    @Articles = Article.all
    @count = 0
    @events = Event.all

  end
  def merch
  end
  def about
  end
  def blog
    @user1s = User1.all
    @Articles = Article.all

  end
end
