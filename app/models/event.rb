class Event < ActiveRecord::Base
  belongs_to :castable, polymorphic: true
end
