class Answer < ActiveRecord::Base
  belongs_to :interrogation
  belongs_to :choice
  belongs_to :question
end
