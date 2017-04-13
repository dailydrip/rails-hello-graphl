Types::BookType = GraphQL::ObjectType.define do
  name "Book"
  field :title, types.String
  field :rating, types.Int
  field :author, Types::AuthorType
end
