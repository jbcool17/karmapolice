class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
    	t.integer :activity_id
    	t.integer :voting_user_id
    	t.integer :points
    	t.text :comment

      t.timestamps null: false
    end
  end
end
