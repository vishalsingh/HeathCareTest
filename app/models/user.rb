class User < ActiveRecord::Base
  validates :name, :address, presence: true
end
