class ProjectType < Category
  has_and_belongs_to_many :projects
  default_scope { where(kind: 'project_type') }
end
