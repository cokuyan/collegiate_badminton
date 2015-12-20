class Session < ActiveRecord::Base
  belongs_to :sessionable, polymorphic: true
end
