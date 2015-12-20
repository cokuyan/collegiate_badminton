class Division < ActiveRecord::Base
  has_many :schools

  validates :name, presence: true, uniqueness: true
end
