class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  validates :first_name, :last_name, presence: true
  
  has_many :lists
  
  has_many :favorite_lists
  has_many :favorites, through: :favorite_lists, source: :list
  
end
