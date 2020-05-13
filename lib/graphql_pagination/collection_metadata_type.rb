module GraphqlPagination
  class CollectionMetadataType < GraphQL::Schema::Object
    field :current_page, Integer, null: false, camelize: false
    field :limit_value, Integer, null: false, camelize: false
    field :total_count, Integer, null: false, camelize: false
    field :total_pages, Integer, null: false, camelize: false
  end
end
