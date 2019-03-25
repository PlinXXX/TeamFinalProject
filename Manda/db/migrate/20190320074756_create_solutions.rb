class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
    	t.string :solution
      	t.timestamps
    end
  end
end
