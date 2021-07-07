module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :FullNameOfTheBuildingAdministrator, String, null: true
    field :EmailOfTheAdministratorOfTheBuilding, String, null: true
    field :PhoneNumberOfTheBuildingAdministrator, String, null: true
    field :FullNameOfTheTechContactForTheBuilding, String, null: true
    field :TechContactEmail, String, null: true
    field :TechContactPhone, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :customer_id, Integer, null: true
    field :address_id, Integer, null: true
    field :customerInfo, Types::CustomerType, null: true

    def customerInfo
      Customer.find(object.customer_id)
    end

    field :interventions, [Types::FactInterventionType], null:true
  
    def interventions
      FactIntervention.where(Building_ID: object.id)
    end

    field :BuildingDetail, [Types::BuildingDetailType], null:true

    def BuildingDetail
      BuildingDetail.where(building_id: object.id)
    end
  end
end
