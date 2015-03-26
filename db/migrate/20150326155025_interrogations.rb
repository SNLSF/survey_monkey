class Interrogations < ActiveRecord::Migration
  def change
    create_table :interrogations do |t|
      t.belongs_to :user
      t.belongs_to :survey
      t.timestamps
    end
  end
end
