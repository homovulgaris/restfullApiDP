class CreateAdjectives < ActiveRecord::Migration
  def change
    create_table :adjectives do |t|
      t.text :lemma
      t.text :pos
      t.text :lexdomname
      t.text :lexdom

      t.timestamps null: false
    end
  end
end
