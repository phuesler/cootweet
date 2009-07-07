class TweetsController < ApplicationController
  before_filter :require_user
  before_filter :get_tweets
  
  def index
    @tweet = Tweet.new
  end
  
  def create
    @tweet = current_user.tweets.build(params[:tweet])
    if @tweet.save
      flash[:notice] = "Tweet saved!"
      redirect_to tweets_path
    else
      flash[:error] = "Tweet could not be saved!"
      render :action => :index
    end
  end
  
  protected
  
  def get_tweets
    @tweets = current_user.tweets.paginate(:page => params[:page], :per_page => 10)    
  end
end
