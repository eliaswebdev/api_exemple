class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## API
  acts_as_token_authenticatable

  ## ASSOCIATIONS
  has_many :contacts, dependent: :destroy
end
