json.array!(@questions) do |question|
  json.extract! question, :id, :country, :capital
  json.url question_url(question, format: :json)
end
