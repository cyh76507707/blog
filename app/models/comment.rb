class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  has_many :notifications, as: :notifiable, dependent: :destroy
end
