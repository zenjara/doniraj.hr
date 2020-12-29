class AddHighlightedToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :highlighted, :boolean, default: false
  end
end
