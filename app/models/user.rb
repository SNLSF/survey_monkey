class User < ActiveRecord::Base
  has_many :surveys, foreign_key: "creator_id"
  has_many :interrogations
  has_many :participated_surveys, through: :interrogations
  has_many :answers, through: :interrogations
end
