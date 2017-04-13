Types::AuthorType = GraphQL::ObjectType.define do
  name "Author"
  field :name, types.String
end
