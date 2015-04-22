class CreateQueryGroupisations < ActiveRecord::Migration
  def change
    create_table :query_groupisations do |t|
      t.text :intent
      t.text :link

      t.timestamps null: false
    end
  end
end
