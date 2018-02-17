class CreateStudies < ActiveRecord::Migration[5.1]
  def change
    create_table :studies do |t|
      t.string :secteuretudes
      t.string :niveau
      t.datetime :datedebut
      t.datetime :datecompletion
      t.references :client, foreign_key: true
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
