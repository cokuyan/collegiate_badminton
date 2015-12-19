class School < ActiveRecord::Base
  has_many :contacts
  has_many :current_contacts, -> { current }, class_name: 'Contact'
end
