class Contact < ApplicationRecord
  ## ASSOCIATION
  belongs_to :user

  ## VALIDATIONS
  validates :name, :user, presence: true
end
