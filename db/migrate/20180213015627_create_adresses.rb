class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.integer :id
      t.string :NumeroCivique
      t.string :Rue
      t.string :CodePostal
      t.string :Ville
      t.string :Province

      t.timestamps
    end
  end
end
