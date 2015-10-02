require 'elasticsearch/model'

class Article < ActiveRecord::Base
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks
    settings index: { number_of_shards: 1 } do
        mappings dynamic: 'false' do
            indexes :text, analyzer: 'english'
        end
    end

    def self.search(query)
        __elasticsearch__.search(
            {
                query: {
                    multi_match: {
                        query: query,
                        fields: ['text']
                    }
                }
            }
        )
    end

end

# Delete the previous articles index in elasticsearch
Article.__elasticsearch__.client.indices.delete index: Article.index_name rescue nil

# Create the new index with the mapping
Article.__elasticsearch__.client.indices.create \
    index: Article.index_name,
    body: {
        settings: Article.settings.to_hash,
        mappings: Article.mappings.to_hash
    }

# Index all article records from the DB to elasticsearch
Article.import
