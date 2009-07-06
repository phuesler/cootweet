namespace :db do
  namespace :data do
    desc "Create tweets"
    task :create_tweets => :environment do
      LIMIT = ENV['LIMIT'] ? ENV['LIMIT'].to_i : 100
        owner = User.create!(:email => "tweety#{Time.now.to_i}@test.host", :password => "password", :password_confirmation => "password")
        LIMIT.times do
          owner.tweets.create(:tweet => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sit amet nisi risus, id cursus eros. Nunc feugiat, ipsum ut consectetur porttitor.")
        end
    end
  end
end