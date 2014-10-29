json.array!(@user_responses) do |user_response|
  json.extract! user_response, :id, :question_id, :capital, :language
  json.url user_response_url(user_response, format: :json)
end
