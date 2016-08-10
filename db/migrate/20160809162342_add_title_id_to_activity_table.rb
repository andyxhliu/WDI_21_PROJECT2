class AddTitleIdToActivityTable < ActiveRecord::Migration[5.0]
  def change
    add_reference :activities, :title, foreign_key: true
  end
end


