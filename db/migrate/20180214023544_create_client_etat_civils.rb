class CreateClientEtatCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :client_etat_civils do |t|
      t.references :client, foreign_key: true
      t.references :etatcivil, foreign_key: true
      t.datetime :datedebut
      t.datetime :datefin

      t.timestamps
    end
  end
end
