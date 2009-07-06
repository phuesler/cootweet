class Tweet < ActiveRecord::Base

belongs_to :owner, :class_name => User

# Paperclip
has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :large =>   "400x400>",
    },
    :default_url => "/images/:class/dummy_:style.jpg",
    :default_style => :thumb

validates_presence_of :tweet
validates_size_of :tweet, :maximum => 200

validates_attachment_content_type :photo, :content_type => /image\/*/
validates_attachment_size :photo, :less_tan => 3.megabytes
end