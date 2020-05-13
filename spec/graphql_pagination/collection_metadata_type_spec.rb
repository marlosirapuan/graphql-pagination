RSpec.describe GraphqlPagination::CollectionMetadataType do
  describe '.fields' do
    it do
      expect(described_class.fields.keys).to match_array(%w[current_page limit_value total_count total_pages])
    end
  end

  describe '.to_graphql' do
    it do
      expect(described_class.to_graphql).to be_a(GraphQL::ObjectType)
      expect(described_class.to_graphql.to_s).to eq('CollectionMetadata')
    end
  end
end
