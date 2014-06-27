json.array!(@projects) do |project|
  json.extract! project, :id, :name, :code, :description, :billing, :start_date, :deadline, :end_date, :github_url, :status
  json.url project_url(project, format: :json)
end
