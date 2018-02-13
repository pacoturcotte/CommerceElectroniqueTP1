class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :itemtype
      t.integer :itemid
      t.string :event
      t.string :description
      t.text :object
      t.datetime :createdat

      t.timestamps
    end
  end
end
