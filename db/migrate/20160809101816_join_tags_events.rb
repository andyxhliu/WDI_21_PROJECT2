class JoinTagsEvents < ActiveRecord::Migration[5.0]
  def change 
    create_join_table :tags, :events do |t|
      t.integer :tag_id
      t.integer :event_id
    end
  end
end
