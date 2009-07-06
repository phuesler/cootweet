class TweetsController < ApplicationController
  before_filter :require_user
  
  def index
    @tweet = Tweet.new
    @tweets = current_user.tweets.paginate(:page => params[:page], :per_page => 10)
  end
  
  def create
    @tweet = current_user.tweets.build(params[:tweet])
    if @tweet.save
      flash[:notice] = "Tadaaaa"
      redirect_to tweets_path
    else
      flash[:error] = "There was an error"
      render :action => :index
    end
  end
end
