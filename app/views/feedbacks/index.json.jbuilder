json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :debate_id, :rator_id, :rated_id, :explain, :listen, :interest, :comments
  json.url feedback_url(feedback, format: :json)
end
