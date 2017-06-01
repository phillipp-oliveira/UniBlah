class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@uninove\.edu.br\z/, message: "Apenas e-mails @uninove.edu.br podem se registrar." }
end
