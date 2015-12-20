class Admin < ActiveRecord::Base
  has_many :sessions, as: :sessionable

  validates :name, :email, presence: true, uniqueness: true
end
