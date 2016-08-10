json.extract! activity, :id, :content, :start, :title, :event_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)