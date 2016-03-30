class CreateStore < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.text :name
      t.string :description

      t.timestamps null: false
    end
    create_table :categories do |t|
    	t.text :name
    	t.timestamps null: false
    end
    create_table :products do |t|
    	
    	t.text :name
    	t.string :brand
    	t.string :category
    	t.decimal :price
    	t.integer :qty
    	t.timestamps null: false
    end
  end
end

   
