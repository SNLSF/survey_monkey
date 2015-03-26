class User < ActiveRecord::Base
  has_many :surveys, foreign_key: "creator_id"
  has_many :interrogations
  has_many :participated_surveys, through: :interrogations
  has_many :answers, through: :interrogations

  validates :name, :password_hash, :email, presence: true
  validates :email, format: {with:/(\S+)@(\S+)\./}, uniqueness: true

  include BCrypt

  def password
    @password ||= Password.new(password_hash) if password_hash
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
     self.password == password
   end

end
