class User < ActiveRecord::Base
acts_as_authentic # for options see documentation: Authlogic::ORMAdapters::ActiveRecordAdapter::ActsAsAuthentic::Config
has_many :tweets, :foreign_key => :owner_id
end
