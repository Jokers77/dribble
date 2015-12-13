class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

  validates :name, :email, :password_confirmation, presence: {
    message: "Le champ doit être renseigné."
  }

  validates :name, length: { :minimum => 4, message: "4 characters minimum" }

  validates :name, uniqueness: {
    message: "Ce name est déjà pris."
  }

  validates :email, uniqueness: {
    message: "Cet email est déjà pris."
  }

end
