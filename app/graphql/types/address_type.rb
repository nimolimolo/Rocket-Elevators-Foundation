module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :TypeOfAddress, String, null: true
    field :Status, String, null: true
    field :Entity, String, null: true
    field :NumberAndStreet, String, null: true
    field :Apt, String, null: true
    field :City, String, null: true
    field :PostalCode, String, null: true
    field :Country, String, null: true
    field :latitude, Float, null: true
    field :longitude, Float, null: true
    field :Notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
