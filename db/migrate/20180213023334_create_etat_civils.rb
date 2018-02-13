class CreateEtatCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :etat_civils do |t|
      t.string :type

      t.timestamps
    end
  end
end
