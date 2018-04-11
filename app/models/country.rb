class Country < Category
  has_and_belongs_to_many :biddings
  has_and_belongs_to_many :projects
  default_scope { where(kind: 'country') }
end
