class Survey < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :interrogations
  has_many :participated_users, through: :interrogations
  has_many :questions
  validates :title, presence: true
end
