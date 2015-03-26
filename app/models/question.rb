class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices
  has_many :answers
  validates :content, presence: true
end
