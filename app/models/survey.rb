class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :interrogations
  has_many :participated_users, through: :interrogations
  has_many :questions
end
