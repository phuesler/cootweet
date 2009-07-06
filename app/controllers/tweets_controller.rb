class TweetsController < ApplicationController
  before_filter :require_user
  
  def index
    @tweets = current_user.tweets
  end
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = current_user.tweets.build(params[:tweet])
    if @tweet.save
      flash[:notice] = "Tadaaaa"
      redirect_to tweets_path
    else
      flash[:error] = "There was an error"
      render :action => :new
    end
  end
end
