module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :CompanyName, String, null: true
    field :NameOfContact, String, null: true
    field :CompanyContactPhone, String, null: true
    field :EmailOfTheCompany, String, null: true
    field :CompanyDescription, String, null: true
    field :NameOfServiceTechAuthority, String, null: true
    field :TechAuhtorityPhone, String, null: true
    field :TechManagerServiceEmail, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true
    field :address_id, Integer, null: true
  end
end
