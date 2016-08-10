class RemoveReferenceFromActivities < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:activities, :event, index: true, foreign_key: true)
  end
end
