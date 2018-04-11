class ItemInvolved < Category
  has_and_belongs_to_many :biddings
  default_scope { where(kind: 'items_involved') }
end
