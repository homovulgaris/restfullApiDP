class CreateNouns < ActiveRecord::Migration
  def change
    create_table :nouns do |t|
      t.text :lemma
      t.text :pos
      t.text :lexdomname
      t.text :lexdom
      t.text :plu
      t.timestamps null: false
    end
  end
end
