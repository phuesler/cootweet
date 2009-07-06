class Tweet < ActiveRecord::Base
default_scope :order => 'created_at DESC'
belongs_to :owner, :class_name => User

# Paperclip
has_attached_file :photo,
  :styles => {
    :thumb=> "50x50#",
    :large =>   "400x400>",
    },
    :default_url => "/images/:class/dummy_:style.jpg",
    :default_style => :thumb

validates_presence_of :tweet
validates_size_of :tweet, :maximum => 200

validates_attachment_content_type :photo, :content_type => /image\/*/
validates_attachment_size :photo, :less_than => 3.megabytes
end