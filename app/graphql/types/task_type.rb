module Types
  class TaskType < BaseObject
    field :id, ID, null: false
    field :category, String, null: false
    field :starts_time, GraphQL::Types::ISO8601DateTime, null: false
    field :ends_time, GraphQL::Types::ISO8601DateTime, null: false
  end
end
