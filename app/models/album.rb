class Album < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_one :user
end
