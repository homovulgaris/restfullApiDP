class CreateIntentGroupisations < ActiveRecord::Migration
  def change
    create_table :intent_groupisations do |t|
      t.text :intent
      t.text :link

      t.timestamps null: false
    end
  end
end
