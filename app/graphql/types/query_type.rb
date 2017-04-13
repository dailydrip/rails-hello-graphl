Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :book do
    type Types::BookType
    argument :id, !types.ID
    description "Find a book by ID"
    resolve ->(obj, args, ctx) {
      Book.find(args[:id])
    }
  end

  field :author do
    type Types::AuthorType
    argument :name, types.String
    description "Find an author by Name"
    resolve ->(obj, args, ctx) {
      Author.find_by(name: args[:name])
    }
  end
end
