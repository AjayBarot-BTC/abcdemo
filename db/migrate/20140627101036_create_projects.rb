class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :code
      t.text :description
      t.string :billing
      t.string :start_date
      t.string :deadline
      t.string :end_date
      t.string :github_url
      t.string :status

      t.timestamps
    end
  end
end
