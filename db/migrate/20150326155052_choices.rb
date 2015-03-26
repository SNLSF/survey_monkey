class Choices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.belongs_to :question
      t.string :content
      t.timestamps
    end
  end
end
