class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :content
      t.time :start
      t.string :title
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
