class CreateProjectsCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :projects_categories do |t|
      t.references :project, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
