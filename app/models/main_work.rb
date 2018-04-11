class MainWork < Category
  has_and_belongs_to_many :projects
  default_scope { where(kind: 'main_works') }
end
