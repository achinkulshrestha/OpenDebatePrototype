json.array!(@debates) do |debate|
  json.extract! debate, :id, :date, :length, :topic, :completed, :initiator_id, :joiner_id
  json.url debate_url(debate, format: :json)
end
