class School < ActiveRecord::Base
  belongs_to :region
  belongs_to :division

  has_many :contacts
  has_many :current_contacts, -> { current }, class_name: 'Contact'
end
