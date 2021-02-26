class CreateCamperActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :camper_activities do |t|
      t.integer :time
      t.belongs_to :camper, null: false, foreign_key: true
      t.integer :activity_id

      t.timestamps
    end
  end
end
