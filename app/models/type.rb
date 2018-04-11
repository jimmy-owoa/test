class Type < Category
  has_and_belongs_to_many :projects
  default_scope { where(kind: 'types') }
end
