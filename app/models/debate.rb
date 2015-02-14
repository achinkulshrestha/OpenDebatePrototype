class Debate < ActiveRecord::Base
  validates_inclusion_of :topic, in: Topics['topics']
end
