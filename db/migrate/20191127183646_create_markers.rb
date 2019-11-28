class CreateMarkers < ActiveRecord::Migration[6.0]
  
  def change
    create_table :markers do |t|
      t.string :marker_image
      t.string :spawned_description
      t.string :spawned_image
      t.string :spawned_video

      t.timestamps
    end
  end
end
