class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

　VALIDA_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
　VALID_PASSWORD_REGEX　=/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,}\z/

  validates　:nickname,       presence: true
  validates  :email,          {presence: true,  ,  format: { with: VALID_EMAIL_REGEX },   uniqueness: { case_sensitive: false }}
  validates  :password,       {presence: true,  ,  format: { with: VALID_PASSWORD_REGEX}}
end
