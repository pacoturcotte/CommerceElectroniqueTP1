class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :nom
      t.references :adress, foreign_key: true

      t.timestamps
    end
  end
end
