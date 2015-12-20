class Contact < ActiveRecord::Base
  belongs_to :school
  has_many :sessions, as: :sessionable

  scope :current, -> { where(current: true) }

  validates :first_name, :last_name, :email, :title,
            :current, :school_id, presence: true

  validates :email, uniqueness: true
end
