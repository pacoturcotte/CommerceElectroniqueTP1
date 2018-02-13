class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.integer :id
      t.string :prenom
      t.string :nom
      t.datetime :datenaissance
      t.string :nas
      t.integer :nombreenfants
      t.integer :comptetaxesproprietaire
      t.references :adresse, foreign_key: true

      t.timestamps
    end
  end
end
