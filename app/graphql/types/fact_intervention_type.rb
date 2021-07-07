module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :Employee_ID, Integer, null: true
    field :Building_ID, Integer, null: true
    field :Battery_ID, Integer, null: true
    field :Column_ID, Integer, null: true
    field :Elevator_ID, Integer, null: true
    field :Start_date, GraphQL::Types::ISO8601DateTime, null: true
    field :End_date, GraphQL::Types::ISO8601DateTime, null: true
    field :Result, String, null: true
    field :Report, String, null: true
    field :Status, String, null: true
    field :Address, Types::AddressType, null: true

    def Address
      Address.find(Building.find(object.Building_ID).address_id)
    end

    field :Buildings, [Types::BuildingType], null: true

    def Buildings
      Building.where(id: object.Building_ID)
    end
    
  end
end
