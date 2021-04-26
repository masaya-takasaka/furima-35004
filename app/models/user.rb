class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
         PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
         validates_format_of :password, with: PASSWORD_REGEX
       
         with_options presence: true do
           validates :nickname
           validates :birthday
           with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/ } do
             validates :last_name
             validates :first_name
           end
           with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
             validates :ruby_last_name
             validates :ruby_first_name
           end
         end
       
         has_many :items
         
end
