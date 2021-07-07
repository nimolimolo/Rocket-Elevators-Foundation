module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    ######################### Query 1
    field :interventionInfo, Types::FactInterventionType , null: false do
      argument :id, ID, required: true
    end
    
    def interventionInfo(id:)
      FactIntervention.find(id)
    end

    ######################### Query 2
    field :buildingInfo, Types::BuildingType , null: false do
      argument :id, ID, required: true
    end
    
    def buildingInfo(id:)
      Building.find(id)
    end

    ######################### Query 3
    field :employeeInfo, Types::EmployeeType , null: false do
      argument :id, ID, required: true
    end
    
    def employeeInfo(id:)
      Employee.find(id)
    end

  end
end
