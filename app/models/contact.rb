class Contact < ActiveRecord::Base
  belongs_to :school
  has_many :sessions

  scope :current, -> { where(current: true) }
end
