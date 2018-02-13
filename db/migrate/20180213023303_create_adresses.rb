class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :numerocivique
      t.string :rue
      t.string :codepostal
      t.string :ville
      t.string :province

      t.timestamps
    end
  end
end
