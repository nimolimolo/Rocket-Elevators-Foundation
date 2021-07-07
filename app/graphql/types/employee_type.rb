module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :FirstName, String, null: true
    field :LastName, String, null: true
    field :Title, String, null: true
    field :Email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true
    field :interventions, [Types::FactInterventionType], null: true

    def interventions
      FactIntervention.where(Employee_ID: object.id)
    end

  end
end
