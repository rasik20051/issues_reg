json.array!(@issues) do |issue|
  json.extract! issue, :title, :description, :followers
  json.url issue_url(issue, format: :json)
end
