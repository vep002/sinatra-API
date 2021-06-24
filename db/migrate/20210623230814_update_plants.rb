class UpdatePlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :common_name, :string
  end
end
