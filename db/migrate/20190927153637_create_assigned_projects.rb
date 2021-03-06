class CreateAssignedProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :assigned_projects do |t|
      t.references :worker, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
