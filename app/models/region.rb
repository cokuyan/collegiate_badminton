class Region < ActiveRecord::Base
  has_many :schools

  validates :name, presence: true, uniqueness: true
end
