json.array!(@posts) do |post|
  json.extract! post, :name, :title, :body, :is_default
  json.url post_url(post, format: :json)
end
