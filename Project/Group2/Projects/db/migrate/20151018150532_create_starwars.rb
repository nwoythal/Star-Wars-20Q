class CreateStarwars < ActiveRecord::Migration
  def up
    create_table :starwars do |t|
      t.string :what_am_i
      t.text :answer_or_question
      t.integer :node_number
      t.timestamps
    end
    def
    def down
      drop_table :starwars
    end
  end
end
