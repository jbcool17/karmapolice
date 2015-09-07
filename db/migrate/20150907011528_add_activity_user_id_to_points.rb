class AddActivityUserIdToPoints < ActiveRecord::Migration
  def change
    add_column :points, :activity_user_id, :integer
  end
end
