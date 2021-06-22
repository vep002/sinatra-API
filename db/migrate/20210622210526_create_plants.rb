class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :genus 
      t.string :care_instructions 
      t.integer :garden_id
      t.string :image
    end
  end
end
