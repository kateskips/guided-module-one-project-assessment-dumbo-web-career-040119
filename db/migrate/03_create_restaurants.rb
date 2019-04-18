class CreateRestaurants < ActiveRecord::Migration[4.2]
    def change
        create_table :restaurants do |t|
            t.string :name
            t.string :cuisine
            t.string :location
        end
    end
end
