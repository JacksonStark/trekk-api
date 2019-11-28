class MigrationHandler < ActiveRecord::Migration[6.0]
  def change
    add_reference :markers, :trekk, index: true, foreign_key: true
    add_reference :trekks, :user, index: true, foreign_key: true
  end
end
