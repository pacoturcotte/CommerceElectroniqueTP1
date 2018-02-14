class CreateClientHasEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_enfants do |t|
      t.references :enfant, foreign_key: true
      t.references :client, foreign_key: true
      t.boolean :lien

      t.timestamps
    end
  end
end
