class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

#validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@hilton\.com\z/,
#                  message: "must be a Hilton.com account" }
  has_many :links
end
