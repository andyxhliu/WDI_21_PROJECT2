class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
