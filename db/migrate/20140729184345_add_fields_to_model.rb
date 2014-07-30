class AddFieldsToModel < ActiveRecord::Migration
  def change
    add_column :models, :link, :string
  end
end
