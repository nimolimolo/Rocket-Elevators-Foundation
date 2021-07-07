module Types
  class BuildingDetailType < Types::BaseObject
    field :id, ID, null: false
    field :InformationKey, String, null: true
    field :Value, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :building_id, Integer, null: true
  end
end
