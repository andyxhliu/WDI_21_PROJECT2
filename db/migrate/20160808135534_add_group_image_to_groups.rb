class AddGroupImageToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :group_image, :string
  end
end
