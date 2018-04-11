class AddProjectIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :project, foreign_key: true
  end
end
