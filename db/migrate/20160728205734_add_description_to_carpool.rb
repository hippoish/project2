class AddDescriptionToCarpool < ActiveRecord::Migration
  def change
    add_column :carpools, :description, :text
  end
end
