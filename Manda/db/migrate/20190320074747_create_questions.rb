class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.belongs_to :teacher, index: true
    	t.string :question
    	t.string :A
    	t.string :B
    	t.string :C
    	t.string :D
    	t.integer :timeout
      	t.timestamps
    end
  end
end
