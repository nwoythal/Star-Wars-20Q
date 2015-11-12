class CreateStarthings < ActiveRecord::Migration

  def up
    create_table :starthings do |t|
      t.string :what_am_i
      t.text :answer_or_question
      t.integer :node_number
      t.timestamps
    end
  end

  def down
    drop_table :starthings
  end

end
