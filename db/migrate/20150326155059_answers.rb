class Answers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :interrogation
      t.belongs_to :choice
      t.belongs_to :question
      t.timestamps
   end
  end
end
