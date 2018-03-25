class Producer < ActiveRecord::Base
  has_many :events, as: :castable
	has_many :artists, through: :events
end
