class AddDescriptionToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :description, :text
  end
end
