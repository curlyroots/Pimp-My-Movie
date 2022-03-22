class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :movies
  has_many :comments
  has_many :ratings, through: :movies

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
