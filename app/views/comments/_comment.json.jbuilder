json.extract! comment, :id, :content, :user_id, :group_id, :event_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)