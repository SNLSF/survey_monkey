class Interrogation < ActiveRecord::Base
  belongs_to :participated_users, class_name: "User", foreign_key: "user_id"
  belongs_to :participated_surveys, class_name: "Survey", foreign_key: "survey_id"
  has_many :answers
end
