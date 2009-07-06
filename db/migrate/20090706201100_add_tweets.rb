class AddTweets < ActiveRecord::Migration
  def self.up
     create_table :tweets do |t|
       t.integer    :owner_id
       t.text       :tweet
       t.string     :photo_file_name
       t.string     :photo_content_type
       t.integer    :photo_file_size
       t.datetime   :created_at
     end
   end

   def self.down
     drop_table :tweets
   end
end
