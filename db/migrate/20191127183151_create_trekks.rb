class CreateTrekks < ActiveRecord::Migration[6.0]

  def change
    create_table :trekks do |t|
      t.string :name
      t.string :access_code

      t.timestamps
    end
  end
end
