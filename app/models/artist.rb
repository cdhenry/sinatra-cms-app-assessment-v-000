class Artist < ActiveRecord::Base
  has_many :events, as: :castable
	has_many :fans, through: :events
	has_many :producers, through: :events
end
