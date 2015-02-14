class Debate < ActiveRecord::Base
  validates_inclusion_of :topic, in: Topics['topics']

  belongs_to :initator, :class_name => 'User', :foreign_key => 'initiator_id'
  belongs_to :joiner, :class_name => 'User', :foreign_key => 'joiner_id'

  has_one :initiator_feedback, :class_name => 'Feedback', :foreign_key => 'initfeedback_id'
  has_one :joiner_feedback, :class_name => 'Feedback', :foreign_key => 'joinfeedback_id'
end
