class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :title
      t.string :name
      t.string :college_name
      t.string :dept
      t.integer :year

      t.timestamps null: false
    end
  end
end
