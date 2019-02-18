class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|

      t.timestamps
      t.integer :category_id
      t.string :name
    end
  end
end
