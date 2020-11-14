class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.references :city, null: false, foreign_key: true

      t.string :name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :iban
      t.string :website
      t.string :swift
      t.boolean :verified, default: false
      t.boolean :archived, default: false
      t.timestamps
    end
  end
end
