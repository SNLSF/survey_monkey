class Surveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :creator_id
      t.string :title
      t.timestamps
    end
  end
end
