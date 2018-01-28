class User < ApplicationRecord

  has_many :ratings
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
		 :lockable
		 
  ratyrate_rater
end
